#!/bin/bash
url=$1
folder=$2
if [ !-n $folder ]; then
        folder=`date +%Y%m%d-%H%M%S`
fi
mkdir $folder
cd $folder
for file in `curl $url |grep embed-responsive-item | sed 's#.*<a class="embed-responsive-item" href="##g' | sed 's/".*//g'`; do
	wget "$file"
done
