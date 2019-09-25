Ubuntu SRU xenial, bionic, disco (post-freeze): 09/17/2019
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 09/17/2019

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


09/17/2019 SRU: [launchpad process bug:#1844334](https://pad.lv/1844334)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1843276](http://pad.lv/1843276) | [verification output](../bugs/lp-1843276.txt) |
| [# 1844191](http://pad.lv/1844191) | [verification output](../bugs/lp-1844191.txt) |
| Manual openstack test | ✔ [verification output](../manual/openstack-sru-19.2.36.txt) |
| Manual oracle test | [verification output](../manual/oracle-sru-19.2.36.txt) |
| Manual gce test | ✔ [verification output](../manual/gce-sru-19.2.36.txt) |
| Manual azure test | ✔ [verification output](../manual/azure-sru-19.2.36.txt) |
| Manual ec2 test | ✔ [verification output](../manual/ec2-sru-19.2.36.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-19.2.36.txt) |
| Manual nocloud-kvm test | ✔ [verification output](../manual/nocloud-kvm-19.2.36.txt) |
| Manual softlayer test | ✔ [verification output](../manual/softlayer-sru-19.2.36.txt) |
| Manual nocloud-lxd test | ✔ [verification output](../manual/nocloud-lxd-19.2.36.txt) |
