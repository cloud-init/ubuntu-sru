Ubuntu SRU xenial, zesty, artful: 11-21-2017
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 11-21-2017.

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


10-06-2017 SRU: [launchpad process bug: #1721847](https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1721847)


The links listed below are to bugs bugs fixed in this SRU are as follows. Links to verification testing will be the following


## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [#1721579](https://pad.lv/1721579) | [verification output](../bugs/lp-1721579.txt) |
| [#1728186](https://pad.lv/1728186) | [verification output](../bugs/lp-1728186.txt) |
| [#1735331](https://pad.lv/1735331) | [verification output](../bugs/lp-1735331.txt) |
| EC2 manual xenial, zesty, artful | [verification output](../manual/ec2-sru-17.1.46.txt) |
| Azure manual xenial, zesty, artful | [verification output](../manual/azure-sru-17.1.46.txt) |
| GCE manual xenial, zesty, artful | [verification output](../manual/gce-sru-17.1.46.txt) |
