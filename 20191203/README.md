Ubuntu SRU xenial, bionic, cosmic, disco, eoan: 12/03/2019
=====
This Readme hosts the manual SRU verification logs for bugs related to the cloud-init SRU started on 12/03/2019

Given [cloud-init's exception process](https://wiki.ubuntu.com/CloudinitUpdates), Ubuntu SRUs will from this point forward create an general SRU process bug which will describe related bugs/features fixed in the given cloud-init SRU. A readme like this will exist to capture any manual SRU validation performed for specific bugs or features fixed in the SRU. Generally most of the features and bugs should be covered by cloud-init's conituous integration at https://jenkins.ubuntu.com/server/view/cloud-init/.


12/03/2019 SRU: [launchpad process bug:#1854872](https://pad.lv/1854872)


The links listed below are to bugs fixed in this SRU and the verification of those bugs.

## SRU verification content
| Bug | Verification Script and Output |
| -------- |  -------- |
| [# 1696476](http://pad.lv/1696476) | [verification output](../manual/ec2-sru-19.3.41.txt) EC2 isn't mistakenly detected as E24cloud|
| SRU Verification #1 [# 1854084](http://pad.lv/1854084) | [verification output](../bugs/lp-1854084.txt) |
| SRU Verification #2 [b6055c40](https://git.launchpad.net/cloud-init/commit/?id=b6055c40) set_passwords: support for FreeBSD (#46) | [verification output](../bugs/b6055c40.txt) |
| SRU Verification #3 [# 1815030](http://pad.lv/1815030) | [verification output](../bugs/lp-1815030.txt) |
| SRU Verification #4 [# 1806014](http://pad.lv/1806014) | [verification output](../bugs/lp-openstack-ipv6-slaac-dhcpv6.txt) |
| SRU Verification #5 [# 1852100](http://pad.lv/1852100) | [verification output](../bugs/lp-1852100.txt) |
| SRU Verification #6 [# 1849731](http://pad.lv/1849731) | [verification output](../bugs/lp-1849731.txt) |
| SRU Verification #7 [45ea695f](https://git.launchpad.net/cloud-init/commit/?id=45ea695f) Add config for ssh-key import and consuming user-data | [verification output](../bugs/45ea695f.txt) |
| SRU Verification #8 [# 1848690](http://pad.lv/1848690) | [verification output](../bugs/lp-openstack-ipv6-slaac-dhcpv6.txt) |
| SRU Verification #9 [d3e71b5e](https://git.launchpad.net/cloud-init/commit/?id=d3e71b5e) cc_puppet: Implement csr_attributes.yaml support | [verification output](../bugs/d3e71b5e.txt) |
| SRU Verification #10 [# 1849677](http://pad.lv/1849677) | [verification output](../bugs/lp-1849677.txt) |
| SRU Verification #11 [f1c788e2](https://git.launchpad.net/cloud-init/commit/?id=f1c788e2) net/netplan: use ipv6-mtu key for specifying ipv6 mtu values | [verification output](../bugs/f1c788e2.txt) |
| SRU Verification #12 [# 1849640](http://pad.lv/1849640) | [verification output](../bugs/lp-1849640.txt) |
| SRU Verification #13 [# 1847114](http://pad.lv/1847114) | [verification output](../bugs/lp-1847114.txt) |
| SRU Verification #14 [# 1847517](http://pad.lv/1847517) | [verification output](../bugs/lp-openstack-ipv6-slaac-dhcpv6.txt) |
| SRU Verification #15 [# 1846535](http://pad.lv/1846535) | [verification output](../bugs/lp-1846535.txt) |
| SRU Verification #16 [# 1801364](http://pad.lv/1801364) | [verification output](../bugs/lp-1801364.txt) |
| Manual openstack test | [verification output](../manual/openstack-sru-19.3.41.txt) |
| Manual oracle test | [verification output](../manual/oracle-sru-19.3.41.txt) |
| Manual gce test | [verification output](../manual/gce-sru-19.3.41.txt) |
| Manual azure test | [verification output](../manual/azure-sru-19.3.41.txt) |
| Manual ec2 test | [verification output](../manual/ec2-sru-19.3.41.txt) |
| Manual vmware test | [verification output](../manual/vmware-sru-19.3.41.txt) |
| Manual nocloud-kvm test | [verification output](../manual/nocloud-kvm-19.3.41.txt) |
| Manual softlayer test | [verification output](../manual/softlayer-sru-19.3.41.txt) |
| Manual nocloud-lxd test | [verification output](../manual/nocloud-lxd-19.3.41.txt) |
