FROM mcr.microsoft.com/devcontainers/base:jammy
RUN apt-get update
RUN apt-get -y install gcc-arm*
RUN apt-get -y install build-essential
RUN apt-get -y install manpages-dev
RUN apt-get -y install libc6-dev-armhf-cross
RUN apt-get -y install qemu-user gdb-multiarch
RUN apt-get -y install gdb-multiarch


# RUN sudo apt-get -y install gcc-arm* build-essential manpages-dev libc6-dev-armhf-cross qemu-user gdb-multiarch gdb-multiarch

RUN echo "set auto-load safe-path /" >> /etc/gdb/gdbinit

EXPOSE 1234