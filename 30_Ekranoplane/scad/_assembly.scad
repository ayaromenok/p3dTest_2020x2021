include <../../../lib/lib.scad> //required 0.1.2.20200527
include <engine.scad>

//gearBox716();
//dualEngineHolder();
dualEngineHolderBottom();

module dualEngineHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        gearBox716Holder(px=80, py=16, pz=6.5, rx=-90);
        gearBox716Holder(px=-80, py=16, pz=6.5, rx=-90);
        
        //driver board
        difference(){
            yCube(44,44,3);
            yCube(34,34,4);
            yCyl(1.6,4, 18.5, 18.5);
            yCyl(1.6,4, 18.5, -18.5);
            yCyl(1.6,4, -18.5, 18.5);
            yCyl(1.6,4, -18.5, -18.5);
        }//dif
        
        //Wemos D1 R1
        //driver board
        translate([0,-56,0])
        difference(){
            yCube(54, 68, 3);
            yCube(44, 58, 4);
            yCyl(1.6, 5, 19.7, 31.5);
            yCyl(1.6, 5, -8.5, 31.5);
            yCyl(1.6, 5, 24.5, -20);
            yCyl(1.6, 5, -24.5, -18.5);
        }//dif
        
        yCube(64, 3, 3, 50, 15);
        yCube(64, 3, 3, -50,15);
        yCube(64, 3, 3, 50, -1);
        yCube(64, 3, 3, -50,-1);
        
        yCube(4, 25, 3, 80,10);
        yCube(4, 25, 3, -80,10);
    }//translate    
}//module


module dualEngineHolderBottom(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //driver board
        difference(){
            yCube(44,44,3);
            yCube(34,34,4);
            yCyl(1.6,4, 18.5, 18.5);
            yCyl(1.6,4, 18.5, -18.5);
            yCyl(1.6,4, -18.5, 18.5);
            yCyl(1.6,4, -18.5, -18.5);
        }//dif
        
        translate([0,0,-70]){
            difference(){
                yCube(64,64,3,0,-10);
                yCube(54,54,4,0,-10);
                yCyl(1.6, 4, 28.5, 18.5);
                yCyl(1.6, 4, 28.5, -38.5);
                yCyl(1.6, 4, -28.5, 18.5);
                yCyl(1.6, 4, -28.5, -38.5);
            }//dif            
        }//translate
        yCube(3,3,70, 14.5, 18.5, -35);
        yCube(3,3,70, -14.5, 18.5, -35);
        
        yCube(3,3,73, 14.5, -29.5, -35, -16);
        yCube(3,3,73, -14.5, -29.5, -35, -16);
    }//translate    
}//module
