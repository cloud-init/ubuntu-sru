Ubuntu SRU xenial, bionic, focal, groovy (post-freeze): 12/01/2020
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 12/01/2020

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


12/01/2020 SRU: [launchpad process bug:#1905599](https://pad.lv/1905599)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [GH: #570](https://github.com/canonical/cloud-init/commit/6b5c306b537aafeded249fc82a3317fba8214508) | [verification output](../bugs/gh-570.txt) |
| [GH: #586](https://github.com/canonical/cloud-init/commit/b0e73814) | [verification output](../bugs/gh-586.txt) |
| [GH: #632](https://github.com/canonical/cloud-init/commit/2730521fd566f855863c5ed049a1df26abcd0770) | [verification output](../bugs/gh-632.txt) |
| [LP: #1897099](http://pad.lv/1897099) | [verification output](bugs/lp-1897099.txt) |
| [LP: #1898997](http://pad.lv/1898997) | [verification output](bugs/lp-1898997.txt) |
| [LP: #1900837](http://pad.lv/1900837) | [verification output](bugs/lp-1900837.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-20.4.0.txt) |
| Manual softlayer test | [verification output](../manual/softlayer-sru-20.4.0.txt) |
| Manual azure test | [verification output](../manual/azure-sru-20.4.0.txt) |
| Manual openstack test | [verification output](../manual/openstack-sru-20.4.0.txt) |
| Manual oracle test | [verification output](../manual/oracle-sru-20.4.0.txt) |
| Manual gce test | [verification output](../manual/gce-sru-20.4.0.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-20.4.0.txt) |
