#!/bin/bash

URL=$1
EXT="${2:-mp3}"

# -r recurse
# -l1 max recursion depth to 1
# --no-parent do not ascend into parent dirs
# -nd no directories. put the files right here
# -e robots=off - download anyway even when robots.txt exists to fend off 

wget -r -l1 -nd --no-parent -e robots=off  -A .${EXT} ${URL}

