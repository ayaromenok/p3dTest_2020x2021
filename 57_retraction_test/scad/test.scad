include <../../../lib/lib2.scad>

test();

module test(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCube(30,10,0.6);
        yCyl(3,20,  10,0,10);
        yCyl(3,20,  -10,0,10);
    }//transform
}//module

