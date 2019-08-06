#!/bin/sh

# 区切り文字を改行に設定
IFS=$'\n'
# 1行づつ処理して配列取得、`エントリ名.fasta`でファイルに保存
# 1行目のクオートはシングルクオートでなく、バッククオートであることに注意！
for entry in `cat entries.txt`
 do
 curl -O http://togows.org/entry/ddbj-ddbj/$entry.fasta
done
