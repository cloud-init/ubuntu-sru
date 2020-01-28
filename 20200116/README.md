Ubuntu SRU xenial, bionic, eoan (post-freeze): 01/16/2020
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 01/16/2020

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


01/16/2020 SRU: [launchpad process bug:#1859725](https://pad.lv/1859725)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| SRU Manual #1 (azure byteswapped)| [verification output](../bugs/sru-19.4.33-manual-1.txt) |
| SRU manual #2 [# 1850988](http://pad.lv/1850988) | [verification output](../bugs/lp-1850988.txt) |
| SRU manual #3 [# 1852496](http://pad.lv/1852496) | [verification output](../bugs/lp-1852496.txt) |
| SRU Manual #4 | [verification output](../bugs/sru-19.4.33-manual-4.txt) |
| SRU Manual #5 | [verification output](../bugs/b59870ca.txt) |
| SRU Manual #6 | [verification output](../bugs/sru-19.4.33-manual-6.txt) |
| Manual openstack test | [verification output](../manual/openstack-sru-19.4.33.txt) |
| Manual oracle test | [verification output](../manual/oracle-sru-19.4.33.txt) |
| Manual gce test | [verification output](../manual/gce-sru-19.4.33.txt) |
| Manual azure test | [verification output](../manual/azure-sru-19.4.33.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-19.4.33.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-19.4.33.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-19.4.33.txt) |
| Manual softlayer test | [verification output](../manual/softlayer-sru-19.4.33.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-19.4.33.txt) |
