#!/usr/bin/env sh

outpath=/g/data/ik11/inputs/access-om2/input_rc

echo "WARNING: About to copy files to ${outpath}"
read -p "Proceed? (y/n) " yesno
case $yesno in
   [Yy] ) ;;
      * ) echo "Cancelled."; exit 0;;
esac

set -e
set -x

cp --preserve=timestamps --remove-destination topog.nc ${outpath}/mom_1deg
cp --preserve=timestamps --remove-destination ocean_mask.nc ${outpath}/mom_1deg
cp --preserve=timestamps --remove-destination ocean_vgrid.nc ${outpath}/mom_1deg
cp --preserve=timestamps --remove-destination kmt.nc ${outpath}/cice_1deg

set +e
chgrp ik11 ${outpath}/mom_1deg/* ${outpath}/cice_1deg/*
chmod g+r  ${outpath}/mom_1deg/* ${outpath}/cice_1deg/*

echo "done"
