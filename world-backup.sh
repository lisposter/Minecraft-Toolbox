#!/bin/bash

# this script is for back up minecraft world outside the minecraft game dir, and copy to dropbox.

# maybe more features will be added soon.


# --config sample
# --use backword slash if your world name has space, ep: Hello/ World

WordName=TimeTunnel
MCPATH=/home/$(whoami)/.minecraft
BKDIR=/home/leigh/Files/MC
DROPBOX=0

#-- sample end


timestamp=`date  +%Y-%m-%d_%H%M%S`
cd ~/
tar czvf ${BKDIR}/${WordName}-${timestamp}-shell.tar.gz ${MCPATH}/saves/${WordName}
echo $(md5sum ${BKDIR}/${WordName}-${timestamp}-shell.tar.gz)>>${BKDIR}/hash.log

if [ $DROPBOX -eq 1 ]; then
	cp ${BKDIR}/${WordName}-${timestamp}-shell.tar.gz /home/$(whoami)/Dropbox/MC/
    rm -rf /home/$(whoami)/Dropbox/MC/hash.log
    cp ${BKDIR}/hash.log /home/$(whoami)/Dropbox/MC/ 
fi
