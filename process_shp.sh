#!/bin/bash
# open zip
# go over each file in zip
# convert each file
# zip all files


for FILE in *.zip # cycles through all files in directory (case-sensitive!)
do
    echo "converting file: $FILE..."
    FILENEW=`echo $FILE | sed "s/.mif/_new.shp/"` # replaces old filename
    ogr2ogr \
    -f "ESRI Shapefile" \
    "$FILENEW" "$FILE"
done
exit
