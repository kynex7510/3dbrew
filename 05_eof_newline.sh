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

  # Make sure each file ends with a newline
  vi -escwq $i
done
