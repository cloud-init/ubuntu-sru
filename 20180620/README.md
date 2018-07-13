Ubuntu SRU xenial, artful: 06/20/2018
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 06/20/2018
There was an SRU validation bug discovered in 18.3.0 which is resolved by
cloud-init version 18.3.9.

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


06/20/2018 SRU: [launchpad process bug:#1777912](https://pad.lv/1777912)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1770712](http://pad.lv/1770712) | ✔ [verification output](../bugs/lp-1770712.txt) |
| [# 1770462](http://pad.lv/1770462) | ✔ [verification output](../bugs/lp-1770462.txt) |
| [# 1768600](http://pad.lv/1768600) | ✔ [verification output](../bugs/lp-1768600.txt) |
| [# 1745235](http://pad.lv/1745235) | ✔ [verification output](../bugs/lp-1745235.txt) |
| [# 1771468](http://pad.lv/1771468) | ✔ [verification output](../bugs/lp-1771468.txt) |
| [# 1766711](http://pad.lv/1766711) | ✔ [verification output](../bugs/lp-1766711.txt) |
| [# 1777912](http://pad.lv/1777912) | ✔ [verification output](../bugs/lp-1777912.txt) |
| [rhbz# 1542578](https://bugzilla.redhat.com/show_bug.cgi?id=1542578) | ✔ [verification output](../bugs/rhbz-1542578.txt) |
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-18.3.0.txt) |
| Manual azure test | ✔ [verification output](../manual/azure-sru-18.3.0.txt) |
| Manual gce test | ✔ [verification output](../manual/gce-sru-18.3.0.txt) |
| Manual openstack test | ✔ [verification output](../manual/openstack-sru-18.3.0.txt) |
| Manual softlayer test | ✔ [verification output](../manual/softlayer-sru-18.3.9.txt) |


## Automated test results

Attached to the bug are full logs from the jenkins run:

| Release | Log | Artifacts |
| ------- | -------- | ----- |
| xenial | [console](https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1777912/+attachment/5162553/+files/xenial-integration-console.log) | [artifacts](https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1777912/+attachment/5162552/+files/xenial-integration-artifacts.tar.xz) |
| artful | [console](https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1777912/+attachment/5162549/+files/artful-integration-console.log) | [artifacts](https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1777912/+attachment/5162548/+files/artful-integration-artifacts.tar.xz) |
| bionic | [console](https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1777912/+attachment/5162551/+files/bionic-integration-console.log) | [artifacts](https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1777912/+attachment/5162550/+files/bionic-integration-artifacts.tar.xz) |
