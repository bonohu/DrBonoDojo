#!/bin/sh

# 区切り文字を改行に設定
IFS=$'\n'
# ファイル名、データベース名を変更して再実行
for entry in `cat entriesNM.txt`
 do
 curl -O http://togows.org/entry/ncbi-nucleotide/$entry.fasta
done
