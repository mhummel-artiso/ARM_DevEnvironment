FROM mcr.microsoft.com/devcontainers/base:jammy
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get -y install gcc-arm*
RUN apt-get -y install build-essential
RUN apt-get -y install manpages-dev
RUN apt-get -y install libc6-dev-armhf-cross
RUN apt-get -y install qemu
RUN apt-get -y install qemu-user
RUN apt-get -y install qemu-user-static
RUN apt-get -y install gdb-multiarch

# RUN apt-get -y install gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf binutils-arm-linux-gnueabihf-dbg

RUN echo "set auto-load safe-path /" >> /etc/gdb/gdbinit

EXPOSE 1234