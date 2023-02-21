#!/bin/bash
set -eo pipefail

FULLFILEPATH=$(echo "$1" | awk -F'.' '{print $1}')
FILENAME=$(echo "$FULLFILEPATH" | grep -o '[^/]*$')

echo $FULLFILEPATH

DEBUG_PORT=1234

if [ -z $FILENAME ]; then
    echo "No file name provided!"
    exit 1
fi

mkdir -p bin

# compile
echo "compiling $FILENAME ..."
arm-none-eabi-as $FULLFILEPATH.s -g -o ./bin/$FILENAME.o | echo "compiling failed!"

# link
echo "linking $FILENAME ..."
arm-none-eabi-ld ./bin/$FILENAME.o -o ./bin/$FILENAME | echo "linking failed!"

# start binary in qemu arm emulator
echo "started ARM Emulation on port $port"
qemu-arm -singlestep -g $DEBUG_PORT ./bin/$FILENAME &

# start gnu debugger
gdb-multiarch ./bin/$FILENAME