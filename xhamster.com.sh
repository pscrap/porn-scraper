#!/bin/bash
url=$1
folder=$2
if [ !-n $folder ]; then
        folder=`date +%Y%m%d-%H%M%S`
fi
mkdir ../$folder
cd ../$folder
mkdir pages
cd pages
curl $url > 1
a=2
for url in `cat 1 | grep "data-page=" | grep xhamster | sed 's/.*href="//g' | sed 's/".*//g' | sort | uniq`; do
	curl $url > $a
	let "a++"
done

cd ../

prefix=1
for page in `ls pages`; do
	for file in `cat pages/$page | grep thumb | grep xhcdn.com | sed 's/.*a href="//g' | sed 's/".*//g' | grep thumb | sed 's#/a/\w*/#/#g'`; do
	wget "$file" -O ${prefix}.jpg
	let "prefix++"
done
done
