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

  # Merge code lines (single `) into multiblock code (triple ```)
  perl -0777 -i -pe 's/^((`(?!`).*`$)(\n`.*`)*)/```\n\1\n```/gm' $i
  perl -0777 -i -pe 's/^`(?!`)(.*)`$/\1/gm' $i
done
