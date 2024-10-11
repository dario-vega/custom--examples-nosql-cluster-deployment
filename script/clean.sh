#!/bin/bash
#
# Copyright (c) 2023 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl/

java -Xmx64m -Xms64m -jar $KVHOME/lib/kvclient.jar

echo
echo "Deleting all information in the following directories - \$KVROOT, \$KVDATA  \$PROXYHOME "
rm -rf $KVROOT
rm -rf $PROXYHOME
rm -rf /disk1/data
rm -rf /disk2/data
rm -rf /disk3/data


echo
echo "Recreating the directories - \$KVROOT, \$KVDATA, \$KVXRS, \$PROXYHOME "
echo "     We are simulating multiple drivers but using the same mount point (\${KVDATA}/disk1, \${KVDATA}/disk2, \${KVDATA}/disk3)"
mkdir -p ${KVROOT}
mkdir -p /disk1/data
mkdir -p /disk2/data
mkdir -p /disk3/data
mkdir -p ${PROXYHOME}

