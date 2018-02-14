Ubuntu SRU xenial, artful: 02-02-2017
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 02-02-2018.

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


02-02-2018 SRU: [launchpad process bug:#1747059](https://pad.lv/1747059)


The links listed below are to bugs bugs fixed in this SRU are as follows. Links to verification testing will be the following


## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [#1734991](http://pad.lv/1734991) | ✗ [verification output](../bugs/lp-1734991.txt) |
| [#1741093](http://pad.lv/1741093) | ✗ [verification output](../bugs/lp-1741093.txt) |
| [#1719157,#1716397,#1736750](http://pad.lv/1719157) | ✗ [ping author/owner] |
| [#1670456,#1707033,#1707037,#1707039](http://pad.lv/1670456) | ✗ [ping author/owner] |
| [#1742479](http://pad.lv/1742479) | ✗ [ping author/owner] |
| [#1712680](http://pad.lv/1712680) | ✗ [verification output](../bugs/lp-1712680.txt) |
| [#1741093](http://pad.lv/1741093) | ✗ [verification output](../bugs/lp-1741093.txt) |
| [#1722668](http://pad.lv/1722668) | ✗ [verification output](../bugs/lp-1722668.txt) |
| [#1737704](http://pad.lv/1737704) | ✗ [verification output](../bugs/lp-1737704.txt) |
| [#1731868](http://pad.lv/1731868) | ✗ [verification output](../bugs/lp-1731868.txt) |
| - cli: Add clean and status subcommands \[[30b4d157](https://git.launchpad.net/cloud-init/commit/?id=30b4d157)\] | ✗ [verification output](../manual/ec2-sru-17.2.30.txt)|
| EC2 manual xenial, artful | ✔ [verification output](../manual/ec2-sru-17.2.30.txt) |
| Azure manual xenial, artful | ✗ [verification output](../manual/azure-sru-17.2.30.txt) |
| GCE manual xenial, artful | ✗ [verification output](../manual/gce-sru-17.2.30.txt) |
| Nocloud-kvm logs xenial | ✗ [verification output](../manual/nocloud-kvm-sru-17.2.30.txt) |
| Nocloud-lxd logs xenial, artful | ✗ [verification output](../manual/nocloud-lxd-sru-17.2.30.txt) |
