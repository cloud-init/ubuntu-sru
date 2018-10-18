Ubuntu SRU xenial, bionic: 10/03/2018
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 10/03/2018. It updates Ubuntu Xenial and Bionic series.

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


10/03/2018 SRU: [launchpad process bug:#1795953](https://pad.lv/1795953)
10/17/2018 SRU-regression Xenial: [regression bug:#1798424](https://pad.lv/1798424) Azure network_config default on Xenial needs to be fallback network not imds.


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1682064](http://pad.lv/1682064) | [verification output](../bugs/lp-1682064.txt) |
| [# 1792415](http://pad.lv/1792415) | [verification output](../bugs/lp-1792415.txt) |
| [# 1792157](http://pad.lv/1792157) | [verification output](../bugs/lp-1792157.txt) |
| [# 1791781](http://pad.lv/1791781) | ✔ [verification output](../manual/azure-sru-18.4.0.txt) |
| [# 1766538](http://pad.lv/1766538) | [verification output](../bugs/lp-1766538.txt) |
| [# 1784699](http://pad.lv/1784699) | [verification output](../bugs/lp-1784699.txt) |
| [# 1784713](http://pad.lv/1784713) | [verification output](../bugs/lp-1784713.txt) |
| [# 1768547](http://pad.lv/1768547) | [verification output](../bugs/lp-1768547.txt) |
| [# 1784685](http://pad.lv/1784685) | [verification output](../bugs/lp-1784685.txt) |
| [# 1781229](http://pad.lv/1781229) | [verification output](../bugs/lp-1781229.txt) |
| Manual gce test | [verification output](../manual/gce-sru-18.4.0.txt) |
| Manual azure test | ✔ [verification output](../manual/azure-sru-18.4.0.txt) |
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-18.4.0.txt) |
| Manual openstack test | [verification output](../manual/openstack-sru-18.4.0.txt) |
| Manual oracle test | ✔ [verification output](../manual/oracle-sru-18.4.0.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-18.4.0.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-18.4.0.txt) |
