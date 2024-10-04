#!/bin/bash
#gogogadget:djrobodemo
set -x;

LL="demo.txt";
for ((C=1;C<=$(cat ${LL}|wc -l);C++)); do
  sleep 2;
  bash bin/djrobo.sh "$(sed -n "${C}p" ${LL})";
done
