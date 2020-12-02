#!/bin/bash
for item in BGT-profiles-less-Metazoa/*; do

	prokCounts=`grep "Bacteria" $item | cut -f2 -d, | awk '{ SUM += $1} END { print SUM }'`
	eukCounts=`grep "Eukaryota" $item | cut -f2 -d, | awk '{ SUM += $1} END { print SUM }'`
	totalSeqs=$(python -c "print($prokCounts + $eukCounts)")
	eukFrac=`bc <<< "scale=8; $eukCounts/$totalSeqs"`

	printf "$item\t$eukFrac\n"

done
