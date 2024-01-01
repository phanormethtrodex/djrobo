#!/bin/bash
#dj robo

TRACK=$@;

echo "NEXT UP:";

echo $TRACK;

ls "${TRACK}";

id3v2 -l "${TRACK}";

say.bat dudududududu dee dee dee jay robo;

say.bat next up;

say.bat $(id3v2 -l "${TRACK}" |grep ^Title|sed -re 's/Title\ \ :\ //' -e 's/\ +Artist:\ /\ by\ /' -e "s/[()'\&]//g")

if [[ "$(id3v2 -l "${TRACK}"|grep No\ ID.*\ tag)" != "" ]]; then
  say.bat whoops;
  say.bat audio file tag corruption;
  say.bat dee jay robo go go gadget add hock snatch mode;

  #ADHOC TITLE+ARTIST SNATCHER
  TT="$(ls "${TRACK}"|sed -e 's/.*\\//' -e 's/\.[a-z]\+$//' -e 's/^[0-9]\+//' -e 's/\ -\ //' -e "s/[()'\&]//g")";
  AA="$(echo "${TRACK}"|sed -r -e 's/.*MUSIC.//' -e 's/\\.*//' -e "s/[()'\&]//g")";

  echo " TITLE: ${TT}";
  echo "ARTIST: ${AA}";

  say.bat okay alright okay okay;
  say.bat next up;
  say.bat $(echo "${TT} by ${AA}");
fi

vlc -q -Idummy "${TRACK}";
