#!/bin/bash

echo generating integrated files...

FIRST=true

echo integrated years:
for i in $(find P21/* -maxdepth 1 -type d -name 20[0-9][0-9]); do

	# delete the first line of all files except the first year
	if [ "$FIRST" = true ]
	then
	  FIRST=false
	  cat "$i"/ICD.csv > "$i"/ICD.csv.tmp
	  cat "$i"/FAB.csv > "$i"/FAB.csv.tmp
	  cat "$i"/OPS.csv > "$i"/OPS.csv.tmp
	  cat "$i"/FALL.csv > "$i"/FALL.csv.tmp
	  cat "$i"/ENTGELTE.csv > "$i"/ENTGELTE.csv.tmp
	else
	  tail -n +2 "$i"/ICD.csv > "$i"/ICD.csv.tmp
	  tail -n +2 "$i"/FAB.csv > "$i"/FAB.csv.tmp
	  tail -n +2 "$i"/OPS.csv > "$i"/OPS.csv.tmp
	  tail -n +2 "$i"/FALL.csv > "$i"/FALL.csv.tmp
	  tail -n +2 "$i"/ENTGELTE.csv > "$i"/ENTGELTE.csv.tmp
    fi
echo $i
done

# build the integrated files
for j in ICD FAB OPS FALL ENTGELTE; do
	for i in $(find P21/* -maxdepth 1 -type d -name 20[0-9][0-9]); do
	  cat "$i"/"$j".csv.tmp >> "$j".csv
	  rm "$i"/"$j".csv.tmp
	done
done
