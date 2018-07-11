Ubuntu SRU xenial, artful: 06/20/2018
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 06/20/2018

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
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-18.3.0.txt) |
| Manual azure test | ✔ [verification output](../manual/azure-sru-18.3.0.txt) |
| Manual gce test | ✔ [verification output](../manual/gce-sru-18.3.0.txt) |
| Manual openstack test | ✔ [verification output](../manual/openstack-sru-18.3.0.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-18.3.0.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-18.3.0.txt) |

lp-1770462.txt  lp-1768600.txt
