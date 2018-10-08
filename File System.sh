#!/bin/bash
fileSystem=`diskutil info / |awk '/File System Personality:/ {print $4}'`

echo "<result>$fileSystem</result>"

exit 0