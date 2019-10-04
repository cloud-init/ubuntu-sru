Ubuntu SRU xenial, bionic, cosmic, disco (post-freeze): 10/04/2019
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 10/04/2019

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


10/04/2019 SRU: [launchpad process bug:#1846535](https://pad.lv/1846535)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |

| Manual openstack test | [verification output](../manual/openstack-sru-19.2.36.ubuntu2.txt) |
| Manual oracle test | [verification output](../manual/oracle-sru-19.2.36.ubuntu2.txt) |
| Manual gce test | [verification output](../manual/gce-sru-19.2.36.ubuntu2.txt) |
| Manual azure test | [verification output](../manual/azure-sru-19.2.36.ubuntu2.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-19.2.36.ubuntu2.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-19.2.36.ubuntu2.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-19.2.36.ubuntu2.txt) |
| Manual softlayer test | [verification output](../manual/softlayer-sru-19.2.36.ubuntu2.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-19.2.36.ubuntu2.txt) |
