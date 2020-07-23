include <../../../lib/lib.scad>

catamaranLongeron();

module catamaranLongeron(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCube();
    }//transform
}//module

