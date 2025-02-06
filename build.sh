#!/bin/bash

cyan='\033[0;36m'
blue='\033[0;34m'
nocol='\033[0m'

cd /crave-devspaces/los

echo -e "$cyan***********************************************"
echo -e "       BUILDING ROM with Bomb ass command          "
echo -e "***********************************************$nocol"

# Run inside foss.crave.io devspace, in the project folder
# Remove existing local_manifests
crave run --no-patch -- "rm -rf .repo/local_manifests/ packages; \
repo init -u https://github.com/RennAlt/android -b lineage-20.0 --depth=1 --git-lfs; \
/opt/crave/resync.sh; \
. build/envsetup.sh; \
lunch lineage_ysl-userdebug; \
make installclean; \
export TZ=Asia/Jakarta; \
m bacon"
