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
cat $OUTPUT.temp
cat $OUTPUT.temp |
  # Filter out legacy sections that used IPC macros outside of requests/responses
  awk '/.*Request Static Buffers.*/ { in_buffer_section=1; print $0; next } /{{IPC\/Request}}/ { if (in_buffer_section == 1) { in_buffer_section=2 } } /^=.*/ { in_buffer_section=0 } { if (in_buffer_section < 2) print $0 }' |
  awk '/{{IPC\/RequestStaticBuffers}}/ { in_buffer_section=1; next } /{{IPC\/RequestEnd}}/ { if (in_buffer_section == 1) { in_buffer_section=0; next } } { if (in_buffer_section != 1) print $0 }' |
  sed -z 's/{{#vardefine:ipc_offset|0}}\n//g' |
  sed -z 's/{{IPC\/Request}}\n//g' |
  sed -z 's/{{IPC\/Request|[^\n]*}}\n//g' |
  # # Migrate the rest
  awk -F '|' '/{{IPC\/RequestHeader/ { printf "{{%% ipc/request header=\"%s%04x\" %%}}\n", $2, or(lshift($3, 6), $4) } ! /{{IPC\/RequestHeader/ { print $0 }' |
  sed 's/{{IPC\/RequestEntry|Header code \[\(.*\)\(0x[0-9a-fA-F]*\)\]}}/\1{{% ipc\/request header="\2" %}}/g' |
  sed 's/{{IPC\/RequestEntry|Header code}}/{{% ipc\/request %}}/g' |
  sed 's/{{IPC\/RequestEntry|Result code}}/{{% ipc\/result %}}/g' |
  # Normal parameters
  sed 's/{{IPC\/RequestEntry|\(.*\)}}/{{% ipc\/param %}}\1{{% \/ %}}/g' |
  sed 's/{{IPC\/RequestEntryRange|\([0-9]*\)|\(.*\)}}/{{% ipc\/param span=\1 %}}\2{{% \/ %}}/g' |
  # Process id
  sed 's/{{IPC\/ProcessID}}/{{% ipc\/processid %}}/g' |
  # Static buffers
  sed 's/{{IPC\/TranslateStaticBuffer|\(.*\)|\([0-9]\)}}/{{% ipc\/staticbuffer id=\2 %}}\1{{% \/ %}}/g' |
  # Buffer mappings
  sed 's/{{IPC\/MapPointerR|\(.*\)}}/{{% ipc\/mapbuffer r %}}\1{{% \/ %}}/g' |
  sed 's/{{IPC\/MapPointerW|\(.*\)}}/{{% ipc\/mapbuffer w %}}\1{{% \/ %}}/g' |
  sed 's/{{IPC\/MapPointerRW|\(.*\)}}/{{% ipc\/mapbuffer rw %}}\1{{% \/ %}}/g' |
  # Handle transfers
  sed 's/{{IPC\/CopyHandle|\(.*\)}}/{{% ipc\/copyhandle count=\1 %}}/g' |
  sed 's/{{IPC\/MoveHandle|\(.*\)}}/{{% ipc\/movehandle count=\1 %}}/g' |
  sed 's/{{IPC\/CopyHandleEntry|\(.*\)}}/{{% ipc\/handleentry %}}\1{{% \/ %}}/g' |
  sed 's/{{IPC\/MoveHandleEntry|\(.*\)}}/{{% ipc\/handleentry %}}\1{{% \/ %}}/g' |
  sed 's/{{IPC\/RequestEnd}}/{{% \/ %}}/g' |
  sed 's/{{IPC\/.*/{{% ERROR_UNKNOWN_IPC_DESCRIPTOR_OMITTED %}}/g' > $OUTPUT.temp2
echo
echo "=================================="
echo
cat $OUTPUT.temp2

pandoc --from=mediawiki --to=gfm $OUTPUT.temp2 --wrap=preserve > $OUTPUT
rm $OUTPUT.temp $OUTPUT.temp2

for i in 0[1-9]*.sh 1*.sh
do
  echo $i;
  ./$i $OUTPUT
done
