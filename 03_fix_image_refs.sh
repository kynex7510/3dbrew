#!/usr/bin/env bash

shopt -s globstar
CONTENTROOT=`realpath .`/content
echo $CONTENTROOT

CONTENTS=$@
if [ -z "$CONTENTS" ]
then
  CONTENTS=`find content/**/*.md`
fi

for i in $CONTENTS
do
  echo $i

  # Make HTML links and image sources relative to the root
  PREFIX=`realpath --relative-to=$i $CONTENTROOT`

  perl -0777 -i -pe 's,href="((?![/\.])(?!https?:)(?!#).*)",href="'"$PREFIX"'/\1",g' $i

  perl -0777 -i -pe 's,src="((?![/\.]).*)",src="'"$PREFIX"'/\1",g' $i
done
