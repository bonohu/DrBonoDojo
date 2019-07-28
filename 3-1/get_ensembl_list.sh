#!/bin/sh
# script to list of files in FTP site
lftp <<-END
        open ftp.ensembl.org/pub/current_fasta
        find
END
