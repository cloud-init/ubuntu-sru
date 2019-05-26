Ubuntu SRU xenial, bionic, cosmic, disco (post-freeze): 05/14/2019
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 05/14/2019

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


05/14/2019 SRU: [launchpad process bug:#1828637](https://pad.lv/1828637)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1825596](http://pad.lv/1825596) | ✔ [verification output](../manual/azure-sry-19.1.1.txt) |
| ubuntu-drivers | ✔ [verification output](../bugs/drivers.txt) |
| [# 1828641](http://pad.lv/1828641) | ✔ [verification output](../bugs/lp-1828641.txt) |
| [# 1819994](http://pad.lv/1819994) | ✔ [verification output](../bugs/lp-1819994.txt) |
| [# 1645824](http://pad.lv/1645824) | ✔ [verification output](../manual/azure-sru-19.1.1.txt) |
| [# 1815109](http://pad.lv/1815109) | ✔ [verification output](../manual/ec2-sru-19.1.1.txt) |
| [# 1823084](http://pad.lv/1823084) | ✔ [verification output](../manual/azure-sru-19.1.1.txt) |
| [# 1818669](http://pad.lv/1818669) | ✔ [verification output](../bugs/lp-1818669.txt) |
| [# 1819913](http://pad.lv/1819913) | ✔ [verification output](../manual/ec2-sru-19.1.1.txt) |
| Manual openstack test | ✔ [verification output](../manual/openstack-sru-19.1.1.txt) |
| Manual gce test | ✔ [verification output](../manual/gce-sru-19.1.1.txt) |
| Manual azure test | ✔ [verification output](../manual/azure-sru-19.1.1.txt) |
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-19.1.1.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-19.1.1.txt) |
| Manual nocloud-kvm test | ✔ [verification output](../manual/nocloud-kvm-sru-19.1.1.txt) |
| Manual nocloud-lxd test | ✔ [verification output](../manual/nocloud-lxd-sru-19.1.1.txt) |
| Manual vmware test | ✔ [verification output](../manual/vmware-sru-19.1.1.txt) |
