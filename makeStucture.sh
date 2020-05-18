#!/bin/sh
echo "creating stucture for $1"
#git checkout -b $1
mkdir $1
cd $1
mkdir png
mkdir stl
mkdir dxf
mkdir scad
echo "done"
