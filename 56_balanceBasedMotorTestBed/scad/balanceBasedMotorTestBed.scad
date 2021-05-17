include <../../../lib/lib2.scad>

//balanceBasedMotorTestBedSide();
//balanceBasedCenterU12mm();
//balanceBasedWeigthU12mm();
balanceBasedMotorU12mm();
module balanceBasedCenterU12mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(18,24,30);
            difference(){
                yCube(12.8,12.6,100);
                yCube(12.4,7.6,110, 2,0,0);
            }//difference
            yCyl(10,20, 17,0,0,  90,00);    
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
            yCube(18,30,30);
            difference(){
                yCube(12.8,12.6,100);
                yCube(12.4,7.6,110, 2,0,0);
            }//difference            
            rotate([45,0,0]){
                yCyl(0.8,20,  0,0,16.25,    0,90,0);
                yCyl(0.8,20,  0,0,-16.25,    0,90,0);
                yCyl(0.8,20,  0, 16.25,0,    0,90,0);
                yCyl(0.8,20,  0, -16.25,0,    0,90,0);
            }//rotate
            yCube(20,10,34, 8,14,0);
            yCube(20,10,34, 8,-14,0);
            yCube(20,10,16, 0,14,0);
            yCube(20,10,16, 0,-14,0);
        }//difference
        
    }//transform
}//module

module balanceBasedMotorTestBedSide(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        _size = 150;
        difference(){
            union(){
                yCube(_size+8, 10,8,     0,0,-2, 0,0,90);                
                yCyl(6,10,       0,-_size/2,1,  0,-90,0,   sx=2, $fn=3);
                yCyl(6,10,       0,_size/2, 1,  0,-90,0,   sx=2,$fn=3);
                yCube(_size*1.4, 10,6,    0,_size/4+2,_size/2+25, 0,70,90);                
                yCube(_size*1.4, 10,6,    0,-_size/4-2,_size/2+25, 0,-70,90);
                yCyl(8,30, 10,0,195,  0,90,0);
            }//union        
            yCyl(1.8,50,    0,0,-3,  0,90,0); 
            yCyl(1.8,50,    0,_size/4,-3,  0,90,0); 
            yCyl(1.8,50,    0,_size/2-2,8,  0,90,0); 
            yCyl(1.8,50,    0,_size/2-2,-3,  0,90,0); 
            yCyl(1.8,50,    0,-_size/4,-3,  0,90,0); 
            yCyl(1.8,50,    0,-_size/2+2,8,  0,90,0); 
            yCyl(1.8,50,    0,-_size/2+2,-3,  0,90,0); 
            //top
            yCyl(2.8,52, 0,0,195,  0,90,0);
        }//difference
        
    }//transform
}//module

module balanceBasedMotorTestBedBot(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        _size = 150;
        difference(){
            union(){
                yCube(_size, 10,16, _size/2,0,3, 0,0,90);
                yCube(_size, 10,16, -_size/2,0,3, 0,0,90);        
                yCyl(6,_size+10,       0,-_size/2,1,  0,-90,0,   sx=2, $fn=3);
                yCyl(6,_size+10,       0,_size/2, 1,  0,-90,0,   sx=2,$fn=3);
            }//union        
            yCyl(0.8,50,    _size/2,0,-3,  0,90,0); 
            yCyl(0.8,50,    _size/2,_size/4,-3,  0,90,0); 
            yCyl(0.8,50,    _size/2,_size/2-2,8,  0,90,0); 
            yCyl(0.8,50,    _size/2,_size/2-2,-3,  0,90,0); 
            yCyl(0.8,50,    _size/2,-_size/4,-3,  0,90,0); 
            yCyl(0.8,50,    _size/2,-_size/2+2,8,  0,90,0); 
            yCyl(0.8,50,    _size/2,-_size/2+2,-3,  0,90,0); 
            
            yCyl(0.8,50,    -_size/2,0,-3,  0,90,0); 
            yCyl(0.8,50,    -_size/2,_size/4,-3,  0,90,0); 
            yCyl(0.8,50,    -_size/2,_size/2-2,8,  0,90,0); 
            yCyl(0.8,50,    -_size/2,_size/2-2,-3,  0,90,0); 
            yCyl(0.8,50,    -_size/2,-_size/4,-3,  0,90,0); 
            yCyl(0.8,50,    -_size/2,-_size/2+2,8,  0,90,0); 
            yCyl(0.8,50,    -_size/2,-_size/2+2,-3,  0,90,0); 
            
        }//difference
        
        difference(){
            yCyl(10,4,          _size/2-5,_size/2-5,-3);
            yCyl(2.3,10,        _size/2-9,_size/2-8,-3);
        }//diff
        difference(){
            yCyl(10,4,          _size/2-5,-_size/2+5,-3);
            yCyl(2.3,10,        _size/2-9,-_size/2+8,-3);
        }//diff
        difference(){
            yCyl(10,4,          -_size/2+5,_size/2-5,-3);
            yCyl(2.3,10,        -_size/2+9,_size/2-8,-3);
        }//diff
        difference(){
            yCyl(10,4,          -_size/2+5,-_size/2+5,-3);
            yCyl(2.3,10,        -_size/2+9,-_size/2+8,-3);
        }//diff
    }//transform
}//module

        