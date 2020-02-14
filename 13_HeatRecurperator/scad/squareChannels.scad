include <../../../lib/lib.scad>

sizeX = 50.1;
sizeY = 0.39;
sizeZ = 3;
stepX = 10;

for (i=[0:stepX:sizeX]){
    yCube(szx=sizeX, szy=sizeY, szz = sizeZ, py=(i-sizeX/2), pz=(sizeZ/2));
    yCube(szx=sizeX, szy=sizeY, szz = sizeZ, px=(i-sizeX/2), pz=(sizeZ/2), rz=90);
}