#!/bin/bash

# Get list of all connected device serials
DEVICE_LIST=$(adb devices | grep -w "device" | awk '{print $1}')

# Set your file and destination path
# FILE="QUERST_EduGames"
DEST="//storage/emulated/0/Download/"
FILE="QUERST_EduGames"
# FILE="QUERST_EduGames/Games/NIXIE_Final.apk"
# FILE="QUERST_EduGames/Games/ArcaneShapes_ver2.apk"
# FILE="QUERST_EduGames/Activity Sheets"

# DEST="//storage/emulated/0/Download/QUERST_EduGames/Games/"
# DEST="//storage/emulated/0/Download/QUERST_EduGames/Activity Sheets/"


# Loop through each device and push the file
for DEVICE in $DEVICE_LIST; do
    echo ""
    echo ""
    echo ""
    echo "CLEAN DOWNLOADS: $DEVICE"
    adb -s "$DEVICE" shell "rm -rf '${DEST}'*"
    echo "[CLEANED]"

    echo "[PUSHING]"
    adb -s "$DEVICE" push "$FILE" "$DEST"

    # for file in "QUERST_EduGames/Activity Sheets/"*; do
    #     adb -s "$DEVICE" push "$file" "$DEST"
    #     done

    echo ""
    echo "[PUSHED] Device: $DEVICE"
done