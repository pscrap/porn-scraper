#!/bin/bash
url=$1
folder=$2
if [ !-n $folder ]; then
        folder=`date +%Y%m%d-%H%M%S`
fi
mkdir $folder
cd $folder
for file in `curl $url | grep bigPhotoPopup | sed 's/file_big":"/\n/g' | sed 's/".*//g' | sed 's/\\\//g'`; do
	wget "https://dl.backbook.me$file"
done
