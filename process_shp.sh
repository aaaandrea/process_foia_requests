#!/bin/bash
set -e -o pipefail

# open zip
# go over each file in zip
# convert each file
# zip all files

# us-ca-city_of_<X>.zip
#   - us-ca-city_of_<X>.shp
#   - us-ca-city_of_<X>.dbf
#   - ...

OUTPUT=$1
FILEPATH=$2

if [[ -z $OUTPUT ]]; then
    echo "Usage:"
    echo '  ./process_sh <title-of-file-output> "zipfile"'
    echo ""
    echo "Example"
    echo "./process_sh us-ca-city_of_new_york nyc.zip"
    exit
fi


echo "Unzipping data file"
# mkdir unzipped
cd unzipped
# unzip "../${FILEPATH}"
# cd ../
OIFS=$IFS
IFS='.'
for FILE in * # cycles through all files in directory (case-sensitive!)
do
    echo "converting file: $FILE..."
    echo "> [$FILE]"
    # FILENEW=`echo $FILE | sed "s/.mif/_new.shp/"` # replaces old filename
    # ogr2ogr \
    # -f "ESRI Shapefile" \
    # "$FILENEW" "$FILE"
done

# rm -rf unzipped

IFS=$OIFS

echo
w
echo

# for FILE in *.zip # cycles through all files in directory (case-sensitive!)
# do
#     echo "converting file: $FILE..."
#     FILENEW=`echo $FILE | sed "s/.mif/_new.shp/"` # replaces old filename
#     ogr2ogr \
#     -f "ESRI Shapefile" \
#     "$FILENEW" "$FILE"
# done

# VERB=$1

#
# case $VERB in
#     download)   download;;
#     convert)    convert;;
#     split)    split;;
#     transform)  parallel "transform {}" ::: ${regions[@]};;
#     upload)     parallel "upload {}" ::: ${regions[@]};;
#     *)          echo "not ok - invalid command" && exit 3;;
# esac

echo "Finishing up"
exit 0
