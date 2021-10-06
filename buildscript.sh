#!/bin/sh

#Placing terminal to the starting folder
cd /root/

#Clone the lhos repo
git clone https://github.com/woof-os/iso-profile 

ls

#Go to this new working folder
cd iso-profile 

ls

#Run the script to build the ISO
./build.sh

#Move the final ISO to /tmp to be accessible from the host
mv out/*.iso /tmp
