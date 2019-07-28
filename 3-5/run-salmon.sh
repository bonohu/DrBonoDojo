#!/bin/bash
p=4
for drr in *.sra; do
 echo ${drr%.*}
 time salmon quant -l A -i silkworm -1 ${drr%.*}.sra_1.fastq.gz -2 ${drr%.*}.sra_2.fastq.gz --validateMappings -p $p -o output/${drr%.*}
done
