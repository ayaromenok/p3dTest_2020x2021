include <../../../lib/lib.scad>

sizeX = 30;
sizeY = 0.4;
sizeZ = 3;

for (i=[0:5:sizeX]){
    yCube(szx=sizeX, szy=sizeY, szz = sizeZ, py=(i-sizeX/2), pz=(sizeZ/2));
    yCube(szx=sizeX, szy=sizeY, szz = sizeZ, px=(i-sizeX/2), pz=(sizeZ/2), rz=90);
}