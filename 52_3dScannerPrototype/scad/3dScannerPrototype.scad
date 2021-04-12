include <../../../lib/lib2.scad>

3dScannerPrototypeTop(0,0,4);
//3dScannerPrototypeBot();
//3dScannerPrototype(0,0,0,   180,0,0);

//3dScannerPrototypeHexFinger(20,0,-10, -90,0,0);
//3dScannerPrototypeHexFinger();

module 3dScannerPrototypeHexFinger(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCyl(4,20,    0,10,0, 90,0,0, $fn=6);
        yCyl(4,2,    0,-20,0, 90,0,0, $fn=6);
        
        
        
        difference(){
            translate([0,-10,0])
            rotate([90,0,0])
            linear_extrude(height = 20, center = true, convexity = 10, twist = -2100, $fn = 20)
            translate([2.7, 0, 0])
            circle(r = 1.4);
            difference(){
                yCyl(6,40,    0,-10,0, 90,0,0, $fn=6);
                yCyl(4,50,    0,-10,0, 90,0,0, $fn=6);
            }//diff
        }//diff
        yCube(1,30,0.42,0,-5,-3.25);
        
    }//transform
}//module
module 3dScannerPrototypeTop(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        translate([0,0,-15])    
        difference(){
            yCyl(50,3);
            yCyl(5.4,10,    0,0,0, $fn=6);
            for (i=[0:60:(360)]){
                rotate([0,0,i])
                yCyl(5.4,10,    20,0,0, $fn=6);
            }//for
            for (i=[15:30:(360)]){
                rotate([0,0,i])
                yCyl(5.4,10,    40,0,0, $fn=6);
            }//for            
        }//diff
        
        difference(){
            union(){
                yCyl(50,2,          0,0,9);
                yCyl(7,4,   0,0,8);    
            }//union
            
            yCube(5.6,3.8,10,     0,0,9);
            yCyl(5,5,   0,0,11);    
        }
        
        
        yTube(5.9,5.4,24,    00,0,-4, $fn=6);
        //yTube(13,12.5,25,          0,0,-3);
        //yTube(27,26.5,25,          0,0,-3);
        yTube(50,49.5,25,          0,0,-3);
        
        for (i=[0:60:(360)]){
                rotate([0,0,i])
                yTube(5.9,5.4,24,    20,0,-4, $fn=6);
        }//for
        for (i=[15:30:(360)]){
                rotate([0,0,i])
                yTube(5.9,5.4,24,    40,0,-4, $fn=6);
            }//for            
        
        //bottom
        difference(){
            yTube(65,62,7,      0,0,6.5);
            for (i=[30:60:(360)]){                
                rotate([0,0,i])
                yCyl(1.7,20,    67.5,0,6.5,  0,90,0);
            }//for
        }
        for (i=[0:60:(360)]){
                rotate([0,0,i])
                yCube(40,2,6,   45,0,7, 0,0,0);                
        }//for
    }//transform
}//module

module 3dScannerPrototypeBot(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
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

