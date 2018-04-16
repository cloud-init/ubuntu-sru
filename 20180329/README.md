Ubuntu SRU xenial, artful: 03/29/2018
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 03/29/2018

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


03-01-2018 SRU: [launchpad process bug:#1759406](https://pad.lv/1759406)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1721243](http://pad.lv/1721243) | ✗ [verification output](../bugs/lp-1721243.txt) |
| [# 1752977](http://pad.lv/1752977) | ✔ [verification output](../bugs/lp-1752977.txt) |
| [# 1702160](http://pad.lv/1702160) | ✔ [verification output](../bugs/lp-1702160.txt) |
| [# 1750884](http://pad.lv/1750884) | ✔ [verification output](../bugs/lp-1750884.txt) |
| [# 1752391](http://pad.lv/1752391) | ✔ [verification output](../bugs/lp-1752391.txt) |
| [# 1735821](http://pad.lv/1735821) | ✔ [verification output](../bugs/lp-1735821.txt) |
| [# 1746455](http://pad.lv/1746455) | ✗ [verification output](../bugs/lp-1746455.txt) |
| [# 1721503](http://pad.lv/1721503) | ✗ [verification output](../bugs/lp-1721503.txt) |
| [# 1752711](http://pad.lv/1752711) | ✔ [verification output](../manual/gce-sru-18.2.4.txt) |
| [# 1446804](http://pad.lv/1446804) | ✔ [verification output](../bugs/lp-1446804.txt) |
| [# 1751051](http://pad.lv/1751051) | ✗ [verification output](../bugs/lp-1751051.txt) |
| [# 1749980](http://pad.lv/1749980) | ✗ [verification output](../bugs/lp-1749980.txt) |
| [# 1747070](http://pad.lv/1747070) | ✗ [verification output](../bugs/lp-1747070.txt) |
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-18.2.4.txt) |
| Manual azure test | ✔ [verification output](../manual/azure-sru-18.2.4.txt) |
| Manual gce test | ✔ [verification output](../manual/gce-sru-18.2.4.txt) |
| Manual nocloud-lxd test | ✔ [verification output](../manual/nocloud-lxd-18.2.4.txt) |
| Manual nocloud-kvm test | ✔ [verification output](../manual/nocloud-kvm-18.2.4.txt) |
