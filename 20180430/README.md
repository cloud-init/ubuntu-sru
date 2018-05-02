Ubuntu SRU xenial/artful: 04/30/2018 18.2-4-g05926e48-0ubuntu1~(16.04.2|17.10.2)
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init Xenial SRU started on 04/30/2018

This SRU is only a cherry pick fix for a focused area of code in cloud-init and will not follow the general [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates). This readme captures any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.

04/30/2018 Xenial SRU: IBMCloud upgrade support

The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1767166](http://pad.lv/1767166) | [verification output](../bugs/lp-1767166.txt) |
| [# 1766401](http://pad.lv/1766401) | [verification output](../bugs/lp-1766401.txt) |
| integration proposed ec2 test | [verification output](../manual/ec2-sru-18.2-4.txt) |
