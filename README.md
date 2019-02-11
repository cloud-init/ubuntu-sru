# Ubuntu SRU (Stable Release Update)

This repository is used to track the SRU verification process the Canonical
Server team uses to ensure a cloud-init release does not regress behavior or
introduce new bugs in Ubuntu. Part of cloud-init's standing SRU exception for
Ubuntu requires that we perform some level of manual testing on clouds where
cloud-init is running. This bug verification process is tracked here for
reference to allow leverage of verfication scripts and test results on each SRU.

Each unique SRU will have results collected under a directory dated at when the
SRU process was started. In each SRU results directory is a separate readme
that reports the bugs verified and the manual cloud tests performed.


The process we follow when creating a new SRU is the following:
  1. File SRU bug like [#1813346](https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1813346)
  1. determine the content which affects ubuntu releases for the git changelog
     by comparing the public version to the proposed SRU version
     *  cd cloud-init; git checkout origin/ubuntu/xenial; sru-hackmd
  1. Create an SRU results directory in this repository with the bugs that affect this SRU
     * sru-create.py -b 1795953 -d 02/05/2019 -v 18.5.21 --bugs 1787459 1792454 1682064 ...
  1. Write sample verification scripts in bugs/lp-*bugnum*.txt to record verification results
  1. Run verification tests and attach results to the specific bug.txt file
  1. Mark done ✔  on each verification item when complete
  1. Attach manual test results for top clouds to SRU process bug
  1. change verification-needed-*series* tag to verification-done-*series* on the SRU process bug when complete



