include <../../../lib/lib2.scad>

gimbalSimpleAssembly();
//2 PRINT
//gimbalSimpleP0(-50,0,27, 0,90,0, isMetal=false);
//gimbalSimpleP1(isMetal=false);
//gimbalSimpleP2(27,0,50,    0,90,180,  isMetal=false);
//gimbalSimpleP3(0,0,43,  0,180,0);

module gimbalSimpleAssembly(px=0, py=0, pz=0, rx=0, ry=0, rz=0, isMetal=true){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        gimbalSimpleP0(-50,0,27, 0,90,0);
        gimbalSimpleP1();
        gimbalSimpleP2(27,0,50,    0,90,180);
        gimbalSimpleP3(0,0,43,  0,0,0);
    }//transform
}//module

module gimbalSimpleP3(px=0, py=0, pz=0, rx=0, ry=0, rz=0, isMetal=true){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //blMotor1605();
       //blMotor1605x3(); 
       
       blMotor1605x3(0,0,-1); 
       //yCube(11,12,5,   13.5,0,2.5); 
       //yCube(4,12,18,   21,0,9); 
       
    }//transform
}//module

module gimbalSimpleP2(px=0, py=0, pz=0, rx=0, ry=0, rz=0, isMetal=true){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //blMotor1605();
       //blMotor1605x3(); 
       blMotor1605x4(20,0,27, 0,90,0);        
       blMotor1605x3(0,0,-1); 
       yCube(11,12,5,   13.5,0,2.5); 
       yCube(4,12,18,   21,0,9); 
       if (isMetal){
          blMotor1605(10,0,27, 0,-90,0);  
       }//if
    }//transform
}//module

module gimbalSimpleP1(px=0, py=0, pz=0, rx=0, ry=0, rz=0, isMetal=true){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //blMotor1605();
       //blMotor1605x3(); 
       blMotor1605x4(40,0,50, 0,90,0);        
       blMotor1605x3(0,0,-1); 
       yCube(31,12,5,   23.5,0,2.5); 
       yCube(4,12,40,   41,0,20); 
       if (isMetal){
          blMotor1605(30,0,50, 0,-90,0);  
       }//if
    }//transform
}//module

module gimbalSimpleP0(px=0, py=0, pz=0, rx=0, ry=0, rz=0, isMetal=true){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //blMotor1605();
       //blMotor1605x3(); 
       blMotor1605x4(40,0,50, 0,90,0);                      
       yCube(4,12,20,   41,0,30); 
       yCube(4,12,20,   41,0,70); 
       yCube(4,20,12,   41,16,50);  
       yCube(4,20,12,   41,-16,50);  
       if (isMetal){
          blMotor1605(30,0,50, 0,-90,0);  
       }//if
    }//transform
}//module
module blMotor1605x3(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(10,6, 0,0,4);
            yCyl(8.4,8);
            yCyl(1,20,    5,-2.88,0);
            yCyl(1,20,    -5,-2.88,0);
            yCyl(1,20,    0,5.77,0);
            yCyl(2.5, 18);
        }//diff
    }//transform
}//module

module blMotor1605x4(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        difference(){
            yCube(20,12,6);
            yCube(20.6,12.6, 4,   0,0,-3);
            yCyl(0.9,12,    7,4,0);
            yCyl(0.9,12,    7,-4,0);
            yCyl(0.9,12,    -7,4,0);
            yCyl(0.9,12,    -7,-4,0);
            yCyl(4, 18);
        }//difference        
    }//transform
}//module


module blMotor1605(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(8,8);
            yCyl(0.9,10,    5,-2.88,0);
            yCyl(0.9,10,    -5,-2.88,0);
            yCyl(0.9,10,    0,5.77,0);
        }//diff
        yCyl(2, 18);
        difference(){
            yCube(20,12, 1.6,   0,0,-8);
            yCyl(0.9,10,    7,4,-8);
            yCyl(0.9,10,    7,-4,-8);
            yCyl(0.9,10,    -7,4,-8);
            yCyl(0.9,10,    -7,-4,-8);
        }//difference
    }//transform
}//module

