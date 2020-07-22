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
mkdir gcode
git push --set-upstream origin $1
echo "dxf/*.dxf~" > .gitignore
cd scad
echo -e "include <../../../lib/lib.scad>\n\nmain();\n\nmodule main(px=0, py=0, pz=0, rx=0, ry=0, rz=0){\n    translate([(px), (py), pz])\n    rotate([rx,ry,rz]){\n        yCube();\n    }//transform\n}//module\n" > main.scad
cd ..
echo -e "## main/readme" > readme.md
echo "done"
