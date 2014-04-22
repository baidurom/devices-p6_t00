
echo "in $0"

OUT_DIR=out/merged_target_files/
OUT_SYSTEM_DIR=out/merged_target_files/SYSTEM

mkdir -p $OUT_DIR/OTA/bin
cp overlay/OTA/bin/updater $OUT_DIR/OTA/bin/updater

mkdir -p out/server/image
cp -rf overlay/server/image/* out/server/image

