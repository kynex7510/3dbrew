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

  # Table headers are wrapped in an unnecessary <p> tag
  sed -i -e 's,<th><p>,<th>,g' $i
  sed -i -e 's,</p></th>,</th>,g' $i
  sed -i -e 's,<td><p>,<td>,g' $i
  sed -i -e 's,</p></td>,</td>,g' $i
done
