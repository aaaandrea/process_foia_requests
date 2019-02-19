#!/bin/bash
# open zip
# go over each file in zip
# convert each file
# zip all files
echo "Please provide the following arguments with your script: "
echo "--output"
echo "the output is the name of the file you wish to output"
echo "filename"
echo "the filename is the zip file of the source data you downloaded"

# for FILE in *.zip # cycles through all files in directory (case-sensitive!)
# do
#     echo "converting file: $FILE..."
#     FILENEW=`echo $FILE | sed "s/.mif/_new.shp/"` # replaces old filename
#     ogr2ogr \
#     -f "ESRI Shapefile" \
#     "$FILENEW" "$FILE"
# done
exit 0
