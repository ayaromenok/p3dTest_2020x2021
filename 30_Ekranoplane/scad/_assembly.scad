include <../../../lib/lib.scad> //required 0.1.2.20200527
include <engine.scad>

//gearBox716();
dualEngineHolder();

module dualEngineHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        gearBox716Holder(px=80, py=16, pz=6.5, rx=-90);
        gearBox716Holder(px=-80, py=16, pz=6.5, rx=-90);
        
        //driver board
        difference(){
            yCube(44,44);
            yCube(34,34,2);
            yCyl(1.6,1.6, 18.5, 18.5);
            yCyl(1.6,1.6, 18.5, -18.5);
            yCyl(1.6,1.6, -18.5, 18.5);
            yCyl(1.6,1.6, -18.5, -18.5);
        }//dif
        
        //Wemos D1 R1
        //driver board
        translate([0,-56,0])
        difference(){
            yCube(54,68);
            yCube(44,58,2);
            yCyl(1.6,1.6, 19.7, 31.5);
            yCyl(1.6,1.6, -8.5, 31.5);
            yCyl(1.6,1.6, 24.5, -20);
            yCyl(1.6,1.6, -24.5, -18.5);
        }//dif
        
        yCube(64,2,1,50,21);
        yCube(64,2,1,-50,21);
        yCube(64,2,1,50, -1);
        yCube(64,2,1,-50,-1);
    }//translate    
}//module
