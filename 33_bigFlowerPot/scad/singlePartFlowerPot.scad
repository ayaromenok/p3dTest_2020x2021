include <../../../lib/lib.scad>

singlePartFlowerPot();

module singlePartFlowerPot(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCyl(rb=80, rt=95, szz=100);
                yCyl(rb=94, rt=98, szz=10, pz=45);
            }
            yCyl(rb=79.3, rt=94.3, szz=100, pz=1.01);
        }
    }//transform
}//module

