Ubuntu SRU xenial, artful: %SRU_START_DATE%
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on %SRU_START_DATE%

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


%SRU_START_DATE% SRU: [launchpad process bug:#%SRU_PROCESS_BUG%](https://pad.lv/%SRU_PROCESS_BUG%)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
%BUG_VERIFICATION%
%MANUAL_VERIFICATION%
