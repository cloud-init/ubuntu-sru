# Ubuntu SRU: Manual cloud test design

## SRU manual test scripts

Manual cloud test scripts which are intended for use in every SRU are located in [sru-scripts/manual](../sru-scripts/manual). Each scripts filename follows the format `<cloud_name>-sru`.

## Common rc file for utilities and test config
Utility functions and configuration parameters required for all manual cloud tests are located in `sru-scripts/sru-vars.template`.

The rc file defines a number of required cloud-specific configuration variables which are named with a common prefix for each cloud. These variables are all "UNSET" in the rc template file. The developer is expected to provide their own cloud-specific overrides in either `~/.sru-vars.rc` or `./.sru-vars.rc` to define preferred values for their own cloud accounts.  Any required configuration variables left as "UNSET" will result in failure to run the manual cloud test.

To create your ./sru-vars.rc:

  $ echo "# Custom SRU verification Variable overrides" > .sru-vars.rc
  $ grep '="UNSET' sru-scripts/sru-vars.template >> .sru-vars.rc
  # Then set appropriate values for your LP_USER and specific cloud config
  $ vi .sru-vars.rc


## Manual cloud test requirements

Below are some guidelines on what is expected from each manual cloud-test.
Unmigrated SRU manual tests will live in `sru-templates/manual/\*`, manual tests
which have been migrated to use the common sru-vars.template utils will
live in `sru-scripts/manual/\*`.

Each manual test **must** perform the following on a cloud without errors:
  * source `sru-scripts/manual/sru-vars.rc` for common utility functions and
    test configuration variables
  * declare any required sru-vars.rc variables by calling `assert_expected_vars`
  * require a **single** ubuntu release parameter on the commandline via a call
    to `parse_args`
  * launch a VM of a **single** ubuntu release with cloud-config userdata on
    the target cloud using the official cloud image containing for that
    ubuntu release
  * upgrade the version of cloud-init to the version in either the
    Ubuntu apt $release-proposed pocket **- OR -**  from cloud-init's proposed
    repo running `add-apt-repo ppa:cloud-init-dev/proposed`
  * report `systemd-analyze show|blame` and `cloud-init analyze show|blame`
    output to inspect for performance regressions
  * Ensure that a `cloud-init clean --logs --reboot` correctly deploys a "fresh"
    vm

Each manual test **may** perform the following additional tests:
  * emit and/or validate network config output
  * verify any bugs/features related to the specific SRU under test
