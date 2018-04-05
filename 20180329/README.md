Ubuntu SRU xenial, artful: 03/29/2018
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 03/29/2018

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


03-01-2018 SRU: [launchpad process bug:#1759406](https://pad.lv/1759406)


This SRU is a SRU-regression fix for a single cherry-picked bug affecting only GCE instances.

The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1420018](http://pad.lv/1420018) | [verification output](../bugs/lp-1420018.txt) |
| [# 1721660](http://pad.lv/1721660) | [verification output](../bugs/lp-1721660.txt) |
| [# 1759318](http://pad.lv/1759318) | [verification output](../bugs/lp-1759318.txt) |
| [# 1759307](http://pad.lv/1759307) | [verification output](../bugs/lp-1759307.txt) |
| [# 1721243](http://pad.lv/1721243) | [verification output](../bugs/lp-1721243.txt) |
| [# 1752977](http://pad.lv/1752977) | [verification output](../bugs/lp-1752977.txt) |
| [# 1702160](http://pad.lv/1702160) | [verification output](../bugs/lp-1702160.txt) |
| [# 1750884](http://pad.lv/1750884) | [verification output](../bugs/lp-1750884.txt) |
| [# 1756471](http://pad.lv/1756471) | [verification output](../bugs/lp-1756471.txt) |
| [# 1757176](http://pad.lv/1757176) | [verification output](../bugs/lp-1757176.txt) |
| [# 1752391](http://pad.lv/1752391) | [verification output](../bugs/lp-1752391.txt) |
| [# 1735821](http://pad.lv/1735821) | [verification output](../bugs/lp-1735821.txt) |
| [# 1755965](http://pad.lv/1755965) | [verification output](../bugs/lp-1755965.txt) |
| [# 1753499](http://pad.lv/1753499) | [verification output](../bugs/lp-1753499.txt) |
| [# 1746455](http://pad.lv/1746455) | [verification output](../bugs/lp-1746455.txt) |
| [# 1754495](http://pad.lv/1754495) | [verification output](../bugs/lp-1754495.txt) |
| [# 1721503](http://pad.lv/1721503) | [verification output](../bugs/lp-1721503.txt) |
| [# 1752711](http://pad.lv/1752711) | [verification output](../bugs/lp-1752711.txt) |
| [# 1446804](http://pad.lv/1446804) | [verification output](../bugs/lp-1446804.txt) |
| [# 1751051](http://pad.lv/1751051) | [verification output](../bugs/lp-1751051.txt) |
| [# 1751145](http://pad.lv/1751145) | [verification output](../bugs/lp-1751145.txt) |
| [# 1749980](http://pad.lv/1749980) | [verification output](../bugs/lp-1749980.txt) |
| [# 1747070](http://pad.lv/1747070) | [verification output](../bugs/lp-1747070.txt) |
| [# 1745663](http://pad.lv/1745663) | [verification output](../bugs/lp-1745663.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-18.2.4.txt) |
| Manual azure test | [verification output](../manual/azure-sru-18.2.4.txt) |
| Manual gce test | [verification output](../manual/gce-sru-18.2.4.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-18.2.4.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-18.2.4.txt) |
