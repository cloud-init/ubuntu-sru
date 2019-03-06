Ubuntu SRU xenial, bionic, cosmic: 02/05/2019
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 02/05/2019

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


02/05/2019 SRU: [launchpad process bug:#1813346](https://pad.lv/1813346)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1799779](http://pad.lv/1799779) | [verification output](../bugs/lp-1799779.txt) |
| [# 1811446](http://pad.lv/1811446) | [verification output](../bugs/lp-1811446.txt) |
| [# 1794399](http://pad.lv/1794399) | [verification output](../manual/ec2-sru-18.5.21.txt) |
| [# 1807466](http://pad.lv/1807466) | [verification output](../bugs/lp-1807466.txt) |
| [# 1805871](http://pad.lv/1805871) | [verification output](../bugs/lp-1805871.txt) |
| [# 1805854](http://pad.lv/1805854) | [verification output](../bugs/lp-1805854.txt) |
| [# 1798117](http://pad.lv/1798117) | [verification output](../bugs/lp-1798117.txt) |
| [# 1806103](http://pad.lv/1806103) | [verification output](../bugs/lp-1806103.txt) |
| [# 1805201](http://pad.lv/1805201) | [verification output](../bugs/lp-1805201.txt) |
| [# 1798189](http://pad.lv/1798189) | [verification output](../bugs/lp-1798189.txt) |
| [# 1796917](http://pad.lv/1796917) | [verification output](../bugs/lp-1796917.txt) |
| [# 1805871](http://pad.lv/1805871) | [verification output](../bugs/lp-1805871.txt) |
| [# 1796917](http://pad.lv/1796917) | [verification output](../bugs/lp-1796917.txt) |
| [# 74747](http://pad.lv/74747) | [verification output](../bugs/lp-74747.txt) |
| [# 1797480](http://pad.lv/1797480) | [verification output](../bugs/lp-1797480.txt) |
| [# 1805854](http://pad.lv/1805854) | [verification output](../bugs/lp-1805854.txt) |
| [58476e71](https://git.launchpad.net/cloud-init/commit/?id=58476e71) | [verification output](../bugs/git-58476e71.txt) |
| Manual gce test | [verification output](../manual/gce-sru-18.5.21.txt) |
| Manual azure test | [verification output](../manual/azure-sru-18.5.21.txt) |
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-18.5.21.txt) |
| Manual openstack test | ✔ [verification output](../manual/openstack-sru-18.5.21.txt) |
| Manual nocloud-kvm test | ✔ [verification output](../manual/nocloud-kvm-18.5.21.txt) |
| Manual nocloud-lxd test | ✔ [verification output](../manual/nocloud-lxd-18.5.21.txt) |
| Manual VMWare test | ✔ [verification output](../manual/vmware-18.5.21.txt) |
| Manual write-files-append test | ✔ [verification output](../bugs/feature-write-files-append.txt) |
