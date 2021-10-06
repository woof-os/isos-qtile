#!/bin/sh

#Placing terminal to the starting folder
cd /root/

#Clone the lhos repo
git clone https://github.com/woof-os/iso-profile 

#Go to this new working folder
cd iso-profile 

#Run the script to build the ISO
./build.sh -v

#Move the final ISO to /tmp to be accessible from the host
mv out/*.iso /tmp
