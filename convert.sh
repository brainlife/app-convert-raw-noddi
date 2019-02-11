#!/bin/bash

rawDT=`jq -r '.raw' config.json`

mkdir noddi;

cp -v $rawDT/FIT_ICVF_NEW.nii.gz ./noddi/icvf.nii.gz;
cp -v $rawDT/FIT_ISOVF_NEW.nii.gz ./noddi/isovf.nii.gz;
cp -v $rawDT/FIT_OD_NEW.nii.gz ./noddi/od.nii.gz;
cp -v $rawDT/FIT_dir.nii.gz ./noddi/dir.nii.gz;
