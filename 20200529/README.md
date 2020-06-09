Ubuntu SRU xenial, bionic, cosmic, disco (post-freeze): 05/29/2020
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 05/29/2020

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


05/29/2020 SRU: [launchpad process bug:#1881018](https://pad.lv/1881018)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# gh-152](http://github.com/canonical/cloud-init/pull/152)| [verification output](../bugs/gh-152.txt) |
| [# gh-296](https://github.com/canonical/cloud-init/pull/296) | [verification output](../bugs/gh-296.txt) |
| [# gh-364](http://github.com/canonical/cloud-init/pull/364) and [# gh-370](http://github.com/canonical/cloud-init/pull/370) | [verification output](../bugs/gh-364.txt) 
| [# gh-353](http://github.com/canonical/cloud-init/pull/353)| [verification output](../bugs/gh-353.txt) |
| [# 1872836](http://pad.lv/1872836) | [verification output](../bugs/lp-1872836.txt) |
| [# 1880279](http://pad.lv/1880279) | [verification output](../bugs/lp-1880279.txt) |
| [# 1858884](http://pad.lv/1858884) | [verification output](../bugs/lp-1858884.txt) |
| [# 1876414](http://pad.lv/1876414) | [verification output](../bugs/lp-1876414.txt) |
| [# 1876412](http://pad.lv/1876412) | [verification output](../bugs/lp-1876412.txt) |
| [# 1876323](http://pad.lv/1876323) | [verification output](../bugs/lp-1876323.txt) |
| [# 1876312](http://pad.lv/1876312) | [verification output](../bugs/lp-1876312.txt) |
| [# 1875951](http://pad.lv/1875951) | [verification output](../bugs/lp-1875951.txt) |
| [# 1875470](http://pad.lv/1875470) | [verification output](../bugs/lp-1875470.txt) |
| [# 1873910](http://pad.lv/1873910) | [verification output](../bugs/lp-1873910.txt) |
| [# 1872836](http://pad.lv/1872836) | [verification output](../bugs/lp-1872836.txt) |
| [# 1870421](http://pad.lv/1870421) | [verification output](../bugs/lp-1870421.txt) |
| [# 1870370](http://pad.lv/1870370) | [verification output](../bugs/lp-1870370.txt) |
| [# 1868232](http://pad.lv/1868232) | [verification output](../bugs/lp-1868232.txt) |
| [# 1867029](http://pad.lv/1867029) | [verification output](../bugs/lp-1867029.txt) |
| [# 1868327](http://pad.lv/1868327) | [verification output](../bugs/lp-1868327.txt) |
| [# 1866930](http://pad.lv/1866930) | [verification output](../bugs/lp-1866930.txt) |
| [# 1865969](http://pad.lv/1865969) | [verification output](../bugs/lp-1865969.txt) |
| [# 1865947](http://pad.lv/1865947) | [verification output](../bugs/lp-1865947.txt) |
| [# 1862702](http://pad.lv/1862702) | [verification output](../bugs/lp-1862702.txt) |
| [# 1865882](http://pad.lv/1865882) | [verification output](../bugs/lp-1865882.txt) |
| [# 1669875](http://pad.lv/1669875) | [verification output](../bugs/lp-1669875.txt) |
| [# 1863954](http://pad.lv/1863954) | [verification output](../bugs/lp-1863954.txt) |
| [# 1863943](http://pad.lv/1863943) | [verification output](../bugs/lp-1863943.txt) |
| [# 1861921](http://pad.lv/1861921) | [verification output](../bugs/lp-1861921.txt) |
| [# 1800854](http://pad.lv/1800854) | [verification output](../bugs/lp-1800854.txt) |
| [# 1861412](http://pad.lv/1861412) | [verification output](../bugs/lp-1861412.txt) |
| [# 1860789](http://pad.lv/1860789) | [verification output](../bugs/lp-1860789.txt) |
| [# 1860795](http://pad.lv/1860795) | [verification output](../bugs/lp-1860795.txt) |
| [# 1781781](http://pad.lv/1781781) | [verification output](../bugs/lp-1781781.txt) |
| [# 1860450](http://pad.lv/1860450) | [verification output](../bugs/lp-1860450.txt) |
| Manual openstack test | [verification output](../manual/openstack-sru-20.2.38.txt) |
| Manual oracle test | [verification output](../manual/oracle-sru-20.2.38.txt) |
| Manual gce test | [verification output](../manual/gce-sru-20.2.38.txt) |
| Manual azure test | [verification output](../manual/azure-sru-20.2.38.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-20.2.38.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-20.2.38.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-20.2.38.txt) |
| Manual softlayer test | [verification output](../manual/softlayer-sru-20.2.38.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-20.2.38.txt) |
