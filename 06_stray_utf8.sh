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

  # Fix leftover UTF-8 garbage from broken wikicode
  sed -i -e 's/\xe2\x80\x8e//g' $i
done
