#!/usr/bin/env bash

shopt -s globstar

CONTENTS=$@
if [ -z "$CONTENTS" ]
then
  CONTENTS=`find content/**/*.md`
fi

for i in $CONTENTS
do
  echo $i

  # mediawiki tables ending in '|-' produce an empty row at the end; delete it
  perl -i -0777 -pe 's/\n(\| *)+\|\n\n/\n\n/g' $i
done
