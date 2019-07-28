#!/bin/sh

for fa in ensembl_pep-fa/*.fa.gz;
 do g="${fa%.gz}"
 pigz -d $fa
 makeblastdb -in $g -dbtype prot -hash_index -parse_seqids
 pigz $g
done
