FROM mcr.microsoft.com/devcontainers/base:jammy
RUN apt-get update

RUN apt-get -y install build-essential
RUN apt-get -y install gcc-arm*
RUN apt-get -y install busybox
RUN apt-get -y install binutils-arm-none-eabi
# RUN apt-get update
RUN apt-get -y install manpages-dev
RUN apt-get -y install libc6-dev-armhf-cross
RUN apt-get -y install qemu
RUN apt-get -y install qemu-user
RUN apt-get -y install gdb-multiarch

RUN echo "set auto-load safe-path /" >> /etc/gdb/gdbinit

EXPOSE 1234