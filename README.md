# djrobo
dj robo: mess up the mix; mix up the mess

deps:
some id3 tag reader (id3v2)
a tts, say, mshta (say.bat) (or say, festival..)
audio player
a playlist.txt, a list of tracks by absolute path location


usage ex (paths non-escaped):
```
LL="music.txt";
for ((C=1;C<=$(cat ${LL}|wc -l);C++)); do
  sleep 2;
  bash bin/djrobo.sh "$(sed -n "${C}p" ${LL})";
done
```
