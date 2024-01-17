# djrobo
# "D-D-D-D-D-D-D-D-D-J-RO-BO"
dj robo: mess up the mix; mix up the mess

deps:
some id3 tag reader (id3v2)
a tts, say, batched mshta (say, say.bat) (or say, festival..)
audio player
a playlist.txt, a list of tracks by absolute path location

say what(?) usage ex:
```
mshta "javascript:code(close((V=(v=new ActiveXObject('SAPI.SpVoice')).GetVoices().count&&v.Speak('what'))))"
```
## ^works perfect out the box on winXP all the way to winX and beyond so just go with that spoken flow and give thee d j robo her voice

usage ex: (paths non-escaped):
```
LL="music.txt";
for ((C=1;C<=$(cat ${LL}|wc -l);C++)); do
  sleep 2;
  bash bin/djrobo.sh "$(sed -n "${C}p" ${LL})";
done
```


interaction usage ex: vlc semiautorepeaterkiller (track skipper)
```
while true; do printf "SKIP IT? "; read -p "(hit enter) "; echo "OK EXEC VLC KILLER.."; pkill.bat vlc.exe; echo; echo; done
```


TODO: push a shell of above bash'd djrobo invoker ex
      push a bat of above say (win) universal invoker
