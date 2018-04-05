#!/usr/bin/env python
import argparse
import glob
import os
import shutil
import subprocess
import sys

BUG_VERIFY_TMPL = "| [# {bugid}](http://pad.lv/{bugid}) | [verification output](../bugs/lp-{bugid}.txt) |"
MANUAL_VERIFY_TMPL = "| {title} | [verification output](../manual/{versioned_file}) |"

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
        '--bugs', default=[],  type=int, nargs='*',
        help=('Space separated list of bug-ids fixed by the SRU.'
              ' E.g. --verified-bugs 123 124'))
    return parser


def create_sru_docs(sruDate, sruVersion, sruBug, bugs):
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
    readme = readme.replace('%SRU_PROCESS_BUG%', str(sruBug))
    readme = readme.replace('%SRU_START_DATE%', sruDate)

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
    readme = readme.replace('%BUG_VERIFICATION%', '\n'.join(bug_lines))

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
       shutil.copy(
           manual_tmpl,
           os.path.join(os.path.join(root_dir, 'manual', versioned_file)))

    readme = readme.replace('%MANUAL_VERIFICATION%', '\n'.join(manual_lines))
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
    create_sru_docs(args.sruDate, args.sruVersion, args.sruBug, args.bugs)
    return 0

if __name__ == '__main__':
    sys.exit(main())
