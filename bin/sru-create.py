#!/usr/bin/env python
import argparse
import glob
import os
import shutil
import subprocess
import sys

BUG_VERIFY_TMPL = "| [# {bugid}](http://pad.lv/{bugid}) | [verification output](../bugs/lp-{bugid}.txt) |"
MANUAL_VERIFY_TMPL = "| {title} | [verification output](../manual/{versioned_file}) |"
DEFAULT_SRU_SERIES='xenial,bionic,disco'

def get_parser():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-b", "--sru-bug-id", type=int, required=True, dest='sruBug',
        help="The SRU process bug id")
    parser.add_argument(
        "-d", "--sru-date", type=str, required=True,  dest='sruDate',
        help="The MM/DD/YYYY start date of the SRU")
    parser.add_argument(
        "-v", "--sru-version", type=str, required=True, dest='sruVersion',
        help="The major.minor.rev of cloud-init to SRU")
    parser.add_argument(
        '-s', '--series', default=DEFAULT_SRU_SERIES, type=str, 
        dest='sruSeries',
        help=('Comma delimited list of ubuntu series for SRU. Default %s' %
              DEFAULT_SRU_SERIES))
    parser.add_argument(
        '-l', '--lp-user', default='daniel-thewatkins', type=str, 
        dest='sruLPUser',
        help=('String of the launchpad user performing the sru.'
              ' An ssh-import-id <lp_user> is performed on the instance.'
              ' Default: daniel-thewatkins'))
    parser.add_argument(
        '--bugs', default=[],  type=int, nargs='*',
        help=('Comma-delimited list of bug-ids fixed by the SRU.'
              ' E.g. --bugs 123 124'))
    return parser


def create_sru_docs(sruDate, sruVersion, sruBug, bugs, sruSeries, sruLPUser):

    (month, day, year) = sruDate.split('/')
    root_dir = os.path.join(os.path.dirname(os.path.dirname(__file__)))
    sruDir = os.path.join(
        root_dir, '{y}{m}{d}'.format(y=year, m=month, d=day))

    print('Creating SRU readme: {date}/README.md'.format(date=sruDir))
    if not os.path.isdir(sruDir):
        os.makedirs(sruDir)
    tmpl_dir = os.path.join(root_dir, 'sru-templates')
    with open(os.path.join(tmpl_dir, 'README.md'), 'r') as stream:
        readme = stream.read()

    bugDir = os.path.join(root_dir, 'bugs')
    bug_lines = []  # Bug verification markdown doc lines
    if bugs:
       print(
           'Generating lp bug verfication templates in {bugDir}'.format(
               bugDir=bugDir))
       os.chdir(bugDir)
    for bug_id in bugs:
       bug_lines.append(BUG_VERIFY_TMPL.format(bugid=bug_id))
       # Create lp-<bug-id> SRU templates
       subprocess.check_call(['gen-bug-sru-tmpl', str(bug_id)])

    manual_template_replacements = {
        '%SRU_SERIES%': sruSeries.replace(',', ' '),
        '%SRU_LP_USER%': sruLPUser}
    manual_lines = []  # Manual verification doc lines
    for manual_tmpl in glob.glob(os.path.join(tmpl_dir, 'manual/*')):
       tmpl_basename = os.path.basename(manual_tmpl)
       platform = tmpl_basename.replace('-sru', '')
       title = 'Manual {platform} test'.format(platform=platform)
       versioned_file = '{tmpl}-{sruVer}.txt'.format(
          tmpl=tmpl_basename, sruVer=sruVersion)
       print('Creating manual sru test file: manual/{_file}'.format(
                 _file=versioned_file))
       manual_lines.append(
           MANUAL_VERIFY_TMPL.format(title=title,
                                     versioned_file=versioned_file))
       with open(manual_tmpl, 'rt') as fin:
           manual_out = os.path.join(root_dir, 'manual', versioned_file)
           with open(manual_out, 'wt') as fout:
               for line in fin:
                   for source, value in manual_template_replacements.items():
                       line = line.replace(source, value)
                   fout.write(line)

    readme_replacements = {
            '%SRU_PROCESS_BUG%': str(sruBug),
            '%SRU_START_DATE%': sruDate,
            '%BUG_VERIFICATION%': '\n'.join(bug_lines),
            '%MANUAL_VERIFICATION%': '\n'.join(manual_lines)
    }
    for source, value in readme_replacements.items():
        readme = readme.replace(source, value)
    with open(os.path.join(sruDir, 'README.md'), 'w') as stream:
        stream.write(readme)
    print("Done creating sru templates in {sruDir}. When satisfied:\n"
          "git add manual bugs {basename};\n"
          "git commit -am 'new sru docs for LP: #{sruBug}';\n"
          "git push origin master".format(
              sruDir=sruDir,basename=os.path.basename(sruDir), sruBug=sruBug))


def main():
    parser = get_parser()
    args = parser.parse_args()
    create_sru_docs(
        args.sruDate, args.sruVersion, args.sruBug, args.bugs, args.sruSeries,
        args.sruLPUser)
    return 0

if __name__ == '__main__':
    sys.exit(main())
