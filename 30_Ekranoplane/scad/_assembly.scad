include <../../../lib/lib.scad>
include <engine.scad>

//gearBox716();
dualEngineHolder();

module dualEngineHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        gearBox716Holder(px=80, rx=-90);
        gearBox716Holder(px=-80, rx=-90);
    }//translate
}//module
