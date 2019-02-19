#!/bin/bash

rawDT=`jq -r '.raw' config.json`

mkdir noddi;
mkdir mask

bet $rawDT/dwi.nii.gz mask_brain -f 0.4 -g 0 -m

mv mask_brain_mask ./mask/mask.nii.gz
rm -rf mask_brain.nii.gz;
cp -v $rawDT/FIT_ICVF_NEW.nii.gz ./noddi/icvf.nii.gz;
cp -v $rawDT/FIT_ISOVF_NEW.nii.gz ./noddi/isovf.nii.gz;
cp -v $rawDT/FIT_OD_NEW.nii.gz ./noddi/od.nii.gz;
cp -v $rawDT/FIT_dir.nii.gz ./noddi/dir.nii.gz;
