Ubuntu SRU xenial, artful: 03/07/2019
=====
This Readme hosts the manual SRU verification logs for bugs related to
the cloud-init SRU started on 03/07/2019

Given [cloud-init's exception
process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will
from this point forward create an general SRU process bug which will
describe related bugs/features fixed in the given cloud-init SRU. A
readme like this will exist to capture any manual SRU validation
performed for specific bugs or features fixed in the SRU. Generally
most of the features and bugs should be covered by cloud-init's
conituous integration at
https://jenkins.ubuntu.com/server/view/cloud-init/.


03/07/2019 SRU: [launchpad process bug:#1819067](https://pad.lv/1819067)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1639263](http://pad.lv/1639263) | [verification output](../bugs/lp-1639263.txt) |
| [# 1794982](http://pad.lv/1794982) | [verification output](../bugs/lp-1794982.txt) |
| [# 1817082](http://pad.lv/1817082) | [verification output](../bugs/lp-1817082.txt) |
| [# 1812676](http://pad.lv/1812676) | [verification output](../bugs/lp-1812676.txt) |
| [# 1802073](http://pad.lv/1802073) | [verification output](../bugs/lp-1802073.txt) |
| [# 1815051](http://pad.lv/1815051) | [verification output](../bugs/lp-1815051.txt) |
| [# 1795508](http://pad.lv/1795508) | [verification output](../bugs/lp-1795508.txt) |
| [# 1813667](http://pad.lv/1813667) | [verification output](../bugs/lp-1813667.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-18.5-44-g7c07af28-0ubuntu1.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-18.5-44-g7c07af28-0ubuntu1.txt) |
| Manual openstack test | [verification output](../manual/openstack-sru-18.5-44-g7c07af28-0ubuntu1.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-18.5-44-g7c07af28-0ubuntu1.txt) |
| Manual gce test | [verification output](../manual/gce-sru-18.5-44-g7c07af28-0ubuntu1.txt) |
| Manual azure test | [verification output](../manual/azure-sru-18.5-44-g7c07af28-0ubuntu1.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-18.5-44-g7c07af28-0ubuntu1.txt) |
