#!/bin/bash
set -eo pipefail
DIR="./bin"
FILEPATH=$(echo "$1" | awk -F'.' '{print $1}')
DEBUG_PORT=1234

if [ -z $FILEPATH ]; then
	echo "No file name provided!"
	exit 1
fi

echo $FILEPATH
# FILENAME=`basename $FILEPATH`
# echo FILEPATH
# if [ "$FILENAME" == *.s ]; then
# 	$FILENAME=${FILENAME::2}
# fi
# echo $FILENAME
DIR="bin/$(dirname "${FILEPATH}")"
echo "Dir: $DIR"
mkdir -p $DIR

# compile
echo "compiling $FILENAME ..."
arm-none-eabi-as -g "./$FILEPATH.S" -o "$DIR/$FILEPATH.o" 
# | echo "compiling failed!"

# link
echo "linking $FILENAME ..."
arm-none-eabi-ld "$DIR/$FILEPATH.o" -o "$DIR/$FILEPATH.elf"  
#| echo "linking failed!"

chmod +x "$DIR/$FILEPATH.elf"

# start binary in qemu arm emulator

echo "started ARM Emulation on port $DEBUG_PORT"
qemu-arm -singlestep -g $DEBUG_PORT "$DIR/$FILEPATH.elf" &

# start gnu debugger
gdb-multiarch "$DIR/$FILEPATH.elf"
