#!/bin/bash
i=1
while IFS='' read -r line || [[ -n "$line" ]]; do
	outfile=$(printf "%04d-$line" "$i")
    	echo "output file is " $outfile
	cp $line ./out/$outfile
    	let i=i+1
done < "/dev/stdin"
