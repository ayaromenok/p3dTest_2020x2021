include <../../../lib/lib2.scad>


//balanceBasedWeigthU12mm();
//balanceBasedMotorU12mm();
balanceBasedCenterU12mm();
//balanceBasedChassisSide(0,0,0, 90);
//balanceBasedChassisCenter();
//_assembly();
module _assembly(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        balanceBasedChassisCenter();
        balanceBasedChassisSide(0,45,0);
        balanceBasedChassisSide(0,-45,0,    0,0,180);
        
        yCube(150,12,12, 0,0,138);        
        yCyl(4,110, 0,0,128,    90,0,0);
        
        balanceBasedCenterU12mm(0,0,138,    0,90,0);
        balanceBasedWeigthU12mm(70,0,138,    0,90,0);
        balanceBasedMotorU12mm(-70,0,138,    0,90,0);
    }//transform
}//module
module balanceBasedChassisCenter(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCube(160,6,6, 0,-37,-2);
                yCube(160,6,6, 0,37,-2);
                yCube(5,80,17, 70,0,3.5);
                yCube(5,80,17, -70,0,3.5);
                yCube(4,80,6, 0,0,-2);
            }//union
            yCyl(0.8,20,    70,35,9,  90);
            yCyl(0.8,20,    -70,35,9,  90);
            yCyl(0.8,20,    35,35,-2,  90);
            yCyl(0.8,20,    -35,35,-2,  90);
            
            yCyl(0.8,20,    70,-35,9,  90);
            yCyl(0.8,20,    -70,-35,9,  90);
            yCyl(0.8,20,    35,-35,-2,  90);
            yCyl(0.8,20,    -35,-35,-2,  90);

        }//difference
        //holes for table
        yTube(4,1.5,3,  5,0,-3.5);
        yTube(4,1.5,3,  -5,0,-3.5);
        
        yTube(4,1.5,3,  36,31,-3.5);
        yTube(4,1.5,3,  36,-31,-3.5);
        yTube(4,1.5,3,  -36,31,-3.5);
        yTube(4,1.5,3,  -36,-31,-3.5);
        
        yTube(4,1.5,3,  76,31,-3.5);
        yTube(4,1.5,3,  76,-31,-3.5);
        yTube(4,1.5,3,  -76,31,-3.5);
        yTube(4,1.5,3,  -76,-31,-3.5);
    }//transform
}//module
module balanceBasedChassisSide(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCube(6,10,150, -38,0,61, 0,32,0);
                yCube(6,10,150, 38,0,61, 0,-32,0);
                yCube(160,10,6, 0,0,-2);
                yCyl(9,10, 0,0,128,    90,0,0);
            }//union
            yCyl(4.4,12, 0,0,128,    90,0,0);
            //yCube(8.2,12,20, 0,0,138);
            //holes bottom
            yCyl(1.5,20,    70,0,9,  90);
            yCone(2.5,3,    70,3.6,9,  90);
            yCyl(1.5,20,    -70,0,9,  90);
            yCone(2.5,3,    -70,3.6,9,  90);
            
            yCyl(1.5,20,    35,0,-2,  90);
            yCone(2.5,3,    35,3.6,-2,  90);
            yCyl(1.5,20,    -35,0,-2,  90);
            yCone(2.5,3,    -35,3.6,-2,  90);
        }//difference        
    }//transform
}//module

module balanceBasedCenterU12mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCube(18,24,50, 0,0,0);
                yCyl(9,24, 10,0,0,  90,00);    
            }//union
            difference(){
                yCube(12.8,12.6,100);
                yCube(12.4,7.6,110, 2,0,0);
            }//difference
            yCyl(4.4,30, 10,0,0,  90,00);    
            //fixes
            yCyl(1.6,30, 0,0,15,  90,00);    
            yCyl(1.6,30, 0,0,-15,  90,00);    
        }//difference        
        
    }//transform
}//module

module balanceBasedWeigthU12mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(18,30,30);
            difference(){
                yCube(12.8,12.6,100);
                yCube(12.4,7.6,110, 2,0,0);
            }//difference            
            rotate([45,0,0]){
                yCyl(1.4,20,  0,0,16.25,    0,90,0);
                yCyl(1.4,20,  0,0,-16.25,    0,90,0);
                yCyl(1.4,20,  0, 16.25,0,    0,90,0);
                yCyl(1.4,20,  0, -16.25,0,    0,90,0);
            }//rotate
            yCube(20,10,34, -4,14,0);
            yCube(20,10,34, -4,-14,0);
        }//difference
    }//transform
}//module

module balanceBasedMotorU12mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCube(18,18,40);
                rotate([45,0,0]){
                    yCyl(3.5,18,  0,0,16.25,    0,90,0);
                    yCyl(3.5,18,  0,0,-16.25,    0,90,0);
                    yCyl(3.5,18,  0, 16.25,0,    0,90,0);
                    yCyl(3.5,18,  0, -16.25,0,    0,90,0);
                }//rotate
            }
            difference(){
                yCube(12.8,12.6,100);
                yCube(12.4,7.6,110, 2,0,0);
            }//difference            
            rotate([45,0,0]){
                yCyl(0.9,20,  0,0,16.25,    0,90,0);
                yCyl(0.9,20,  0,0,-16.25,    0,90,0);
                yCyl(0.9,20,  0, 16.25,0,    0,90,0);
                yCyl(0.9,20,  0, -16.25,0,    0,90,0);
            }//rotate
            //yCube(20,10,34, 8,14,0);
            //yCube(20,10,34, 8,-14,0);
            //yCube(20,10,16, 0,14,0);
            //yCube(20,10,16, 0,-14,0);
        }//difference
        
    }//transform
}//module

