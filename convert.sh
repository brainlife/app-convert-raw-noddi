#!/bin/bash

icvf=`jq -r '.icvf' config.json`;
isovf=`jq -r '.isovf' config.json`;
od=`jq -r '.od' config.json`;
dir=`jq -r '.dir' config.json`;
metric="$icvf $isvof $od $dir";

mkdir noddi;

for i in $metric
	do	
		cp -v ${i} ./noddi/
	done	
