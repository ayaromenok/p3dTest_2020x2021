include <../../../lib/lib2.scad>

brushlessMotorTestBedRound(0,0,0, 0,0,0);
//brushlessMotorTestBedSimple();

module brushlessMotorTestBedRound(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //D112
        //L=67
        difference(){
            union(){
                yCyl(54,80, 0,0,0,  0,90,0, sx=1.3);
                yCube(30,30,10, 0,0,65.5, 0,0,45);
            }
            yCyl(56,84, 0,0,0,  0,90,0);
            yCube(120,120,120,   0,0,-20);
            
            yCyl(2,30,  33.5,0,60);
            yCyl(2,30,  -33.5,0,60);
            yCyl(5,10,  33.5,0,66);
            yCyl(5,10,  -33.5,0,66);
            
            yCyl(0.8,20,  16.25,0,65);
            yCyl(0.8,20,  -16.25,0,65);
            yCyl(0.8,20,  0, 16.25,65);
            yCyl(0.8,20,  0, -16.25,65);
        }       
        
        yCube(0.45,100,10,   -39.7750,0,40);
    }//transform
}//module


module brushlessMotorTestBedSimple(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //32.5
        difference(){
            yCube(88,10,9);
            yCyl(0.8,20,  16.25,0,0);
            yCyl(0.8,20,  -16.25,0,0);
            
            yCyl(1.8,10,  35,0,0);
            yCyl(1.8,10,  -35,0,0);
        }//difference
        difference(){
            yCube(10,117,9);
            yCyl(0.8,10,  0, 16.25,0);
            yCyl(0.8,10,  0, -16.25,0);            
            
            yCyl(1.8,10,  0, 35,0);
            yCyl(1.8,10,  0, 50,0);
            yCyl(1.8,10,  0, -35,0);
            yCyl(1.8,10,  0, -50,0);
        }
    }//transform
}//module

