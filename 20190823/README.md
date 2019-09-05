Ubuntu SRU xenial, bionic, disco (post-freeze): 08/23/2019
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 08/23/2019

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


08/23/2019 SRU: [launchpad process bug:#1841099](https://pad.lv/1841099)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1841454](http://pad.lv/1841454) | ✔ [Verified by Author/Cloud vendor ExoScale]
| [# 1840080](http://pad.lv/1840080) | ✔ [verification output](../bugs/lp-1840080.txt) |
| [# 1812857](http://pad.lv/1812857) | [verification output](../bugs/lp-1812857.txt) |
| [# 1833192](http://pad.lv/1833192) | ✔ [Notified cloud provider VMware for verification]
| [# 1806701](http://pad.lv/1806701) | [verification output](../bugs/lp-1806701.txt) |
| [# 1836949](http://pad.lv/1836949) | ✔ [verification output](../bugs/lp-1836949.txt) |
| [# 1838794](http://pad.lv/1838794) | ✔ [verification output](../bugs/lp-1838794.txt) |
| Manual openstack test | ✔ [verification output](../manual/openstack-sru-19.2.21.txt) |
| Manual oracle test | ✔ [verification output](../manual/oracle-sru-19.2.21.txt) |
| Manual gce test | ✔ [verification output](../manual/gce-sru-19.2.21.txt) |
| Manual azure test | ✔ [verification output](../manual/azure-sru-19.2.21.txt) |
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-19.2.21.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-19.2.21.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-19.2.21.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-19.2.21.txt) |
