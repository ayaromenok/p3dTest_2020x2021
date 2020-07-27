include <../../../lib/lib.scad>

main();

module main(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCube();
        yCube(1,1,1,10);
    }//transform
}//module

