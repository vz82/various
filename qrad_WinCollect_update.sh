#!/bin/bash
# A verysimple script intended to download and mount the latest SFS file available at the moment and
# start patching your QRadar ***7.3.x*** WinCollect component to a WinCollect # Agent
# (v7.2.8.P2) SFS Bundle
# More info: https://www-01.ibm.com/support/docview.wss?uid=ibm10791609
#

cd /tmp

wget https://ak-delivery04-mul.dhe.ibm.com/sdfdl/v2/sar/CM/OS/080gy/0/Xa.2/Xb.jusyLTSp44S0wfNmbWJtgp4MCqzdVI-JhzxFd0tXj8n2KwT0Zp-sMyUVaX4/Xc.CM/OS/080gy/0/730_QRadar_wincollectupdate-728.145.P2.sfs/Xd./Xf.LPR.A6vr/Xg.10008915/Xi.habanero/XY.habanero/XZ.SYhhaj0ZtIeeGQfy01KXCTzfZHU/730_QRadar_wincollectupdate-728.145.P2.sfs

mkdir -p /media/updates

mount -o loop -t squashfs 730_QRadar_wincollectupdate-728.145.P2.sfs /media/updates

cd /media/updates

./installer