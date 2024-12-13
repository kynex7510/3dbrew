#!/usr/bin/env bash
set -e
shopt -s globstar

if [ -z $1 ]
then
  echo "No revision specified"
  exit
fi

wget "https://www.3dbrew.org/w/api.php?action=query&prop=revisions&revids=$1&rvprop=ids|user|comment&format=json" -O $1.temp

cat $1.temp
PARENTREV=`grep '"parentid"' $1.temp | sed 's/.*"parentid":\([^,]*\).*/\1/'`
TITLE=`grep '"title"' $1.temp | sed 's/.*"title":"\([^"]*\).*/\1/' | sed 's/ /_/g'`
REVUSER=`grep '"user"' $1.temp | sed 's/.*"user":"\([^"]*\).*/\1/'`
REVCOMMENT=`grep '"comment"' $1.temp | sed 's/.*"comment":"\([^"]*\).*/\1/'`

if [ -z "$REVCOMMENT" ]
then
  REVCOMMENT="Update $TITLE"
fi

if [ -z "$PARENTREV"]
then
  echo
else
  echo "Updating from rev $PARENTREV"
fi
echo "$TITLE"
echo "$REVUSER"
echo "$REVCOMMENT"

rm $1.temp

OUTPUT=$2
if [ -z $OUTPUT ]
then
  OUTPUT=content/$TITLE.md
  echo "No output filename given; defaulting to $OUTPUT"
fi

if [ -z PARENTREV ] || [ "$PARENTREV" == "0" ]
then
  echo
else
  ./scripts/sync_page.sh $TITLE $PARENTREV $OUTPUT
  git add $OUTPUT
  git commit -m "TODODROP: Artifact from updating $OUTPUT (prev rev $PARENTREV; pre-$1)" || true
fi

./scripts/sync_page.sh $TITLE $1 $OUTPUT
git add $OUTPUT
git commit -m "Rev $1 by $REVUSER: $REVCOMMENT" || true
# git show
