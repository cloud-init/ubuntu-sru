Ubuntu SRU bionic, focal, groovy, hirsute (post-freeze): 2021/05/06
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 2021/05/06

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


2021/05/06 SRU: [launchpad process bug:#1927491](https://pad.lv/1927491)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [GH: #817](https://github.com/canonical/cloud-init/commit/13606a12) | [verification output](../bugs/gh-817.txt) |
| [GH: #868](https://github.com/canonical/cloud-init/commit/02db2c3e) | [verification output](../bugs/gh-868.txt) |
| [LP: #1921004](http://pad.lv/1921004) | [verification output](../bugs/lp-1921004.txt) |
| [LP: #1920939](http://pad.lv/1920939) | [verification output](../bugs/lp-1920939.txt) |
| Manual softlayer test | [verification output](../manual/softlayer-sru-21.2.txt) |
| Manual azure test | [verification output](../manual/azure-sru-21.2.txt) |
| Manual openstack test | [verification output](../manual/openstack-sru-21.2.txt) |
| Manual oracle test | [verification output](../manual/oracle-sru-21.2.txt) |
| Manual gce test | [verification output](../manual/gce-sru-21.2.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-21.2.txt) |
