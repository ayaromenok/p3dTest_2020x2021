include <../../../lib/lib2.scad>

brushlessMotorTestBed();

module brushlessMotorTestBed(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
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

