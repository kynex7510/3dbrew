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
PARENTREV=`grep -oP '(?<="parentid":)[^,]*' $1.temp`
TITLE=`grep -oP '(?<="title":")[^"]*' $1.temp | sed 's/ /_/g'`
REVUSER=`grep -oP '(?<="user":")[^"]*' $1.temp`
REVCOMMENT=`grep -oP '(?<="comment":")(\\\"|[^"])*' $1.temp`

echo
echo

if [ -z "$REVCOMMENT" ]
then
  REVCOMMENT="Update $TITLE"
fi

if [ -z "$PARENTREV" ]
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
mkdir -p `dirname $OUTPUT`

if [ -z PARENTREV ] || [ "$PARENTREV" == "0" ]
then
  echo
else
  ./scripts/sync_page.sh $TITLE $PARENTREV $OUTPUT
  git add $OUTPUT
  git commit -m "Reimport pages with line breaks preserved (revisions $PARENTREV - $1)" || true
fi

./scripts/sync_page.sh $TITLE $1 $OUTPUT
git add $OUTPUT
git commit -m "Rev $1: $REVCOMMENT" --author="$REVUSER <>" || true
# git show
