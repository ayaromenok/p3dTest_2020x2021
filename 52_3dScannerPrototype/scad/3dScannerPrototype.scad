include <../../../lib/lib2.scad>

3dScannerPrototype();
//3dScannerPrototype(0,0,0,   180,0,0);

module 3dScannerPrototype(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(70,4,      0,0,8);
            yCyl(65,6,     0,0,8);
        }//dif
        difference(){
            yCyl(30,4,  0,0,8);        
            stepperMotor28BYJ_48(0,-8,-1);
        }
        //yCube(60,40,20, 0,20,-5);
        for (i=[0:60:(360)]){
            rotate([0,0,i])
            yCube(40,2,4,   50,0,8, 0,0,0);
            
            rotate([0,0,i])
            yCyl(2.5,20,    67.5,0,-0);
        }//for
    }//transform
}//module


//stepperMotor28BYJ_48();
module stepperMotor28BYJ_48(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCyl(14.4,19);
        yCube(15.2,15.2,19, 0,-15);
        yCyl(4.9,21,    0,8,1);
        yCyl(2.9,27,    0,8,5);
        
        yCyl(2.4,30,    17.5,0,10);
        yCyl(2.4,30,    -17.5,0,10);
        yCyl(5.4,19,    17.5,0,0);
        yCyl(5.4,19,    -17.5,0,0);
    }//transform
}//module

