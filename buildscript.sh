#!/bin/sh

#Placing terminal to the starting folder
cd /root/

#Clone the lhos repo
git clone https://github.com/woof-os/iso-profile /root/iso-profile 

#chmod the script
chmod +x /root/iso-profile/build.sh

#CD and run the script to build the ISO
cd /root/iso-profile/
./build.sh

#Move the final ISO to /tmp to be accessible from the host
mv /root/iso-profile/out/*.iso /tmp
