Ubuntu SRU xenial, artful: 04/27/2018
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 04/27/2018

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


04/27/2018 SRU: [launchpad process bug:#1767412](https://pad.lv/1767412)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1766711](http://pad.lv/1766711) | ✔ [verification output](../bugs/lp-1766711.txt) |
| [# 1766714](http://pad.lv/1766714) | ✔ [verification output](../bugs/lp-1766711.txt) |
| [# 1767166](http://pad.lv/1767166) | ✗ [verification output](../bugs/lp-1767166.txt) |
| [# 1766287](http://pad.lv/1766287) | ✗ [verification output](../manual/gce-sru-18.2-27.txt) |
| [# 1746605](http://pad.lv/1746605) | ✗ [verification output](../bugs/lp-1746605.txt) |
| [# 1765085](http://pad.lv/1765085) | ✗ [verification output](../bugs/lp-1765085.txt) |
| [# 1677205](http://pad.lv/1677205) | ✗ [verification output](../bugs/lp-1677205.txt) |
| [# 1764264](http://pad.lv/1764264) | ✗ [verification output](../bugs/lp-1764264.txt) |
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-18.2-27.txt) |
| Manual azure test | ✗ [verification output](../manual/azure-sru-18.2-27.txt) |
| Manual gce test | ✗ [verification output](../manual/gce-sru-18.2-27.txt) |
| Manual nocloud-lxd test | ✗ [verification output](../manual/nocloud-lxd-18.2-27.txt) |
| Manual nocloud-kvm test | ✗ [verification output](../manual/nocloud-kvm-18.2-27.txt) |
