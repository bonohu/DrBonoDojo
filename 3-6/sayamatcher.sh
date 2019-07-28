#!/bin/sh
# 染色体ごとに実行するためのコマンド
for i in `seq 1 22` X Y; do
  perl sayamatcher.pl chr$i < CACGTG.bed
done
