#!/bin/bash

mkdir -p csv
for FILEPATH in data/*.bz2; do
	FILENAME=$(basename -- "$FILEPATH")
	echo Unzipping $FILENAME
	bzip2 -dk $FILEPATH
	FILENAME="${FILENAME%.*}"
	echo Moving $FILENAME to 'csv' folder
	mv data/$FILENAME csv/$FILENAME
	echo Done
done;

