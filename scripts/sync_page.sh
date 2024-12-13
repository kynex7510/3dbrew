#!/usr/bin/env bash
set -e
shopt -s globstar

if [ -z $1 ]
then
  echo "No page specified"
  exit
fi

REV=$2
if [ -z $REV ]
then
  echo "No revision specified, fetching latest"
fi

OUTPUT=$3
if [ -z $OUTPUT ]
then
  OUTPUT=content/$1.md
  echo "No output filename given; defaulting to $OUTPUT"
fi

wget "https://www.3dbrew.org/w/index.php?title=$1&oldid=$REV&action=raw" -O $OUTPUT.temp
pandoc --from=mediawiki --to=gfm $OUTPUT.temp > $OUTPUT
rm $OUTPUT.temp

for i in 0[1-9]*.sh 1*.sh
do
  echo $i;
  ./$i $OUTPUT
done
python3 11_update_links.py --allow-ambiguous
