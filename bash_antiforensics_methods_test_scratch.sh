#!/bin/bash

# supress all output
exec 1>/dev/null 2>&1

# unset vars
myvar="hiii"
unset $var

# make temp directory in /tmp
mytmpdir=$(mktemp -d)

# make temp file in /tmp
mytmpfile=$(mktemp)

# function to zero and delete file using only builtin
zero_delete_file () {
    if [ -z "$1" ]; then
        echo "ERROR: zero_delete_file must be passed with a file argument!"
        exit 1
    elif [ ! -f "$1" ]; then
        echo "ERRORR: zer_delete_file's argument must be a file!"
        exit 1
    fi

    find "$1" -type f -exec dd if=/dev/zero of="$1" bs=1M conv=notrunc
    rm -f "$1"
}

# function to zero and delete directory using only builtin
zero_delete_dir () {
    if [ -z "$1" ]; then
        echo "ERROR: zero_delete_dir must be passed with a directrory argument!"
        exit 1
    elif [ ! -d "$1" ]; then
        echo "ERRORR: zer_delete_dir's argument must be a directory!"
        exit 1
    fi

    find "$1" -type f -exec dd if=/dev/zero of={} bs=1M conv=notrunc \;
    rm -rf "$1"
}

# nuke file
## if shred is available, it zeros the file and deletes it, otherwise rm -f's it
shred -uz "$mytempfile" || rm -f "$mytempfile"
unset $mytmpfile # dont forget to unset da var

# nuke dir
## attempts to use find and shred to delete and zero the dir, or falls back to rm -rf
find "$mytmpdir" -type f -exec shred -uz {} + || rm -rf "$mytmpdir"
unset $mytmpdir # dont forget to unset da var

# silently fork to background and dont exit if terminal closes
nohup my_script.sh > /dev/null 2>&1 &

echo "somefile.tmp"
touch "somefile.tmp"

echo "someotherfile.tmp"
touch "someotherfile.tmp"

echo "somethirdfile.tmp"
touch "somethirdfile.tmp"

exit 0 # safe clean exit
