#!/bin/csh -fx
set MACHINENAME=`hostname -s`
set MAC=`ifconfig en0 | grep ether | cut -f 2 -d " " | sed -e s/://g`
set FN=${MACHINENAME}_${MAC}
set SIZESPEC=800g
hdiutil create -size $SIZESPEC -fs \"Journaled HFS+\" -type SPARSEBUNDLE /tmp/${FN}.sparsebundle
#hdiutil create -library SPUD -size $SIZESPEC -fs Journaled HFS+ -type SPARSEBUNDLE -volname $MACHINENAME_$MAC_ADDRESS.sparsebundle
#hdiutil create -size 800g -fs "Journaled HFS+" -type SPARSEBUNDLE /tmp/talltenor_001ec2073774.sparseimage
hdiutil create -size 800g -fs "Journaled HFS+" -type SPARSEBUNDLE /tmp/talltenor_001ec20b8e3f.sparseimage
