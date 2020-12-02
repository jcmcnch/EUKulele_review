#!/bin/bash

mkdir -p BGT-profiles-less-Metazoa

for item in ~/MG-primer-eval/bioGEOTRACES/compute-workflow-intermediate/02-phyloFlash_sifted/phyloFlash-other/*NTUfull*csv; do 

	grep -v "Metazoa" $item > BGT-profiles-less-Metazoa/`basename $item .csv`.lessMetazoa.csv

done
