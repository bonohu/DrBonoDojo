#!/bin/sh

for i in `seq 437098 437155`;
do
 echo "getting LC$i"
 curl  http://togows.org/entry/ddbj-ddbj/LC$i.fasta >>  seq.fasta
 sleep 1
done
