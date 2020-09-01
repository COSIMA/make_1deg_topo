#!/usr/bin/env sh
# Commit changes and push, then add metadata to note how changes were made 

module load nco
module load git

echo "About to commit all changes to git repository and push to remote."
read -p "Proceed? (y/n) " yesno
case $yesno in
   [Yy] ) ;;
      * ) echo "Cancelled."; exit 0;;
esac

set -x
set -e

git commit -am "update" || true
git push || true

ncatted -O -h -a history,global,a,c," | Created on $(date) using https://github.com/COSIMA/make_1deg_topo/tree/$(git rev-parse --short HEAD)" topog.nc
ncatted -O -h -a history,global,a,c," | Updated on $(date) using https://github.com/COSIMA/make_1deg_topo/tree/$(git rev-parse --short HEAD)" ocean_mask.nc
ncatted -O -h -a history,global,a,c," | Created on $(date) using https://github.com/COSIMA/make_1deg_topo/tree/$(git rev-parse --short HEAD)" kmt.nc
ncatted -O -h -a history,global,a,c," | Updated on $(date) using https://github.com/COSIMA/make_1deg_topo/tree/$(git rev-parse --short HEAD)" ocean_vgrid.nc
