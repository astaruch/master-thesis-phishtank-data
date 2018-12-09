#!/bin/bash

URL='http://data.phishtank.com/data/cdc400e08a81d1e231cfd3ea919291c8395f7c0289421671dff35be88b3b7558/online-valid.csv.bz2'
TODAY=`date +'%Y-%m-%d'`
FILENAME=$TODAY.csv.bz2
COMMAND="wget -O $FILENAME $URL"
DATA_DIR="./data"

echo Downloading...
echo $COMMAND
`$COMMAND`

echo Moving file...
mv $FILENAME $DATA_DIR

git add $DATA_DIR/$FILENAME
git commit -m "Update of data sources"
git push origin master
