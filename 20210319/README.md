Ubuntu SRU xenial, bionic, focal, groovy (post-freeze): 03/19/2021
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 03/19/2021

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


03/19/2021 SRU: [launchpad process bug:#1920272](https://pad.lv/1920272)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [GH: #633](https://github.com/canonical/cloud-init/commit/a5484d02973e5710442c11e1dc6b1153695c9a59) | [verification output](../bugs/gh-633.txt) |
| [GH: #668](https://github.com/canonical/cloud-init/commit/9a258eebd96aa5ad4486dba1fe86bea5bcf00c2f) | [verification output](../bugs/gh-668.txt) |
| [GH: #760](https://github.com/canonical/cloud-init/commit/4f62ae8d01e8caca9039af067280ca2adad6ab6d) | [verification output](../bugs/gh-760.txt) |
| [GH: #783](https://github.com/canonical/cloud-init/commit/36ddf1ebed3f264fa86ef4f657dce29244c2e068) | [verification output](../bugs/gh-783.txt) |
| [LP: #1835584](http://pad.lv/1835584) | [verification output](../bugs/lp-1835584.txt) |
| [LP: #1901011](http://pad.lv/1901011) | [verification output](../bugs/lp-1901011.txt) |
| [LP: #1915460](http://pad.lv/1915460) | [verification output](../bugs/lp-1915460.txt) |
| Manual softlayer test | [verification output](../manual/softlayer-sru-21.1-19.txt) |
| Manual azure test | [verification output](../manual/azure-sru-21.1-19.txt) |
| Manual openstack test | [verification output](../manual/openstack-sru-21.1-19.txt) |
| Manual oracle test | [verification output](../manual/oracle-sru-21.1-19.txt) |
| Manual gce test | [verification output](../manual/gce-sru-21.1-19.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-21.1-19.txt) |
