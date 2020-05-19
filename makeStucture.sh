#!/bin/bash
if [ "$1" != "" ]; then
    echo "Creating stucture for: $1"
else
    echo "Plz, use a prequired project name as s parameter to the scrip"
    exit
fi
git checkout -b $1
mkdir $1
cd $1
mkdir png
mkdir stl
mkdir dxf
mkdir scad
git push --set-upstream origin $1
ch $1
echo "dxf/*.dxf~" > .gitignore
echo "done"
