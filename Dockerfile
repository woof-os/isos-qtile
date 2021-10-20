##
# NAME             : nlhomme/archiso-builder
# TO_BUILD         : docker build --rm -t nlhomme/archiso-builder:latest .
# TO_RUN           : docker run --rm -v /tmp:/tmp -t -i --privileged nlhomme/archiso-builder:latest 
##

FROM archlinux:latest
#MAINTAINER nlhomme (https://github.com/nlhomme/archiso-builder)

#Install git and archiso
RUN pacman -Syyu git archiso --noconfirm
RUN pacman-key --init
RUN pacman-key --populate archlinux
RUN pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
RUN pacman-key --lsign-key 3056513887B78AEB
RUN pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

#Copy the build script and allow him to be executed
COPY buildscript.sh root/

#Place the terminal in the home folder
RUN ["chmod", "+x", "root/buildscript.sh"]

ENTRYPOINT ["./root/buildscript.sh"]

