#!/usr/bin/env bash

shopt -s globstar

CONTENTS=$@
if [ -z "$CONTENTS" ]
then
  CONTENTS=`find content/**/*.md`
fi

for i in $CONTENTS
do
  # Fix anchor links: Must be converted to lowercase
  sed -i -e 's/\(\[.*\](\)\(#.* "wikilink")\)/\1\L\2/g' $i

  # # Fix relative links: Must prepend / on any non-anchor link
  # perl -0777 -i -pe 's/(\[(?s:.)*?\])\(([^#].* "wikilink"\))/\1(\/\2/g' $i

  # TODO: Remove colons from relative link targets
done
