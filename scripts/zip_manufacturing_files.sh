#!/bin/bash

EXIT1="gbr"
EXIT2="drl"
EXIT3="gbrjob"


DIR="."

echo "searching .$EXIT1 , .$EXIT2 & .$EXIT3 files"
echo "================================="


FILES=$(find "$DIR" -type f \( -name "*.$EXIT1" -o -name "*.EXIT2" -o -name "*.$EXIT3"  \))

if [ -z "$FILES" ]; then
	echo "not $EXIT1, $EXIT2 & $EXIT3 files to compress"
	exit 1

fi
echo "files finded"
echo "$FILES"
echo "---------------------------------------"

ZIP_FILE_NAME="manufacturing_files.zip"

echo "comp in $ZIP_FILE_NAME"

find "$DIR" -type f \( -name "*.$EXIT1" -o -name "*.EXIT2" -o -name "*.$EXIT3"  \) | zip "$ZIP_FILE_NAME" -@


