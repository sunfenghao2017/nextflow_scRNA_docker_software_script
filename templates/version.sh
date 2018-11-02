#!/bin/bash
fastp --version 2>&1
fastqc --version
cat /multiqcversion 2>&1
echo -n "bwa " && bwa 2>&1|head -n3|tail -n1
echo -n "hisat2 " && hisat2 --version|awk '{print \$2," ",\$3}'|head -n1
STAR --version
salmon --version
echo -n "stringtie  " && stringtie --version
cufflinks 2>&1|head -n1
echo -n "HTseq" && htseq-count --help|tail -n1|awk -F ',' '{print \$2}'
featureCounts -v
/usr/bin/Rscript /packagesV.R
