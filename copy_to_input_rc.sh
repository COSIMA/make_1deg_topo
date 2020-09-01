#!/usr/bin/env sh
set -e
set -x
cp --preserve=timestamps --remove-destination topog.nc /g/data/ik11/inputs/access-om2/input_rc/mom_1deg/topog.nc
cp --preserve=timestamps --remove-destination ocean_mask.nc /g/data/ik11/inputs/access-om2/input_rc/mom_1deg/ocean_mask.nc
cp --preserve=timestamps --remove-destination ocean_vgrid.nc /g/data/ik11/inputs/access-om2/input_rc/mom_1deg/ocean_vgrid.nc
cp --preserve=timestamps --remove-destination kmt.nc /g/data/ik11/inputs/access-om2/input_rc/cice_1deg/kmt.nc
