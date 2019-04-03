#!/bin/bash
url=$1

title=$2
if [ !-n $title ]; then
	title=`date +%Y%m%d-%H%M%S`
fi

mkdir ../$title
cd ../$title

curl $url | iconv -f CP1251 -t UTF-8 > tmpfile
nrpages=`cat tmpfile | grep '}"> из' | sed 's/.*из //g' | sed 's/ .*//g'`
#echo $nrpages

a=1
for page in `seq 1 $nrpages`; do
	pageurl=`echo $url | sed "s/p=1/p=$page/g"`
	echo "pageurl is $pageurl"
	for pictureurl in `curl "$pageurl" | iconv -f CP1251 -t UTF-8 | grep 'href="view.php?item=' | sed 's/.*href="//g' | sed 's/".*//g'`; do
		echo "pictureurl is $pictureurl"
		imageurl=`curl http://porevo.site/$pictureurl | iconv -f CP1251 -t UTF-8 | grep "background-image: url" | sed 's/.*background-image: url(//g' | sed 's/).*//g'`;
		echo "imageurl is $imageurl; pageurl is $pageurl"
		wget "$imageurl" -O $a.jpg
		let "a++"
		sleep 2
	done
done

rm tmpfile
