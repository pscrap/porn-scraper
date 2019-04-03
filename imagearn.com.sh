#!/bin/bash
url=$1
folder=$2
if [ !-n $folder ]; then
        folder=`date +%Y%m%d-%H%M%S`
fi
mkdir $folder
cd $folder
for file in `curl $url curl | grep thumbs.imagearn.com | sed 's/.*img src="//g' | sed 's/".*//g' | grep thumbs | sort | uniq | sed 's#imagearn.com/#imagearn.com/imags/#g'`; do
	wget "$file"
done
