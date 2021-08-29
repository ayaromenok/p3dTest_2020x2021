include <../../../lib/lib2.scad>
include <../../../lib/lib2/ext/servo.scad>

boatRudderHolder(isMetal=true);
boatRudder(38,0,0, 0,0,180);
module boatRudder(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        yTube(5,1.8,4,    0,0,56.5);
        yTube(5,1.8,4,    0,0,-5.2);        
        difference(){
            yCyl(2,120,  -33,0,52.8,   sx=15);
            yCube(6,10,2.4, -10,0,16);
        }//difference
    }//transform
}//module


module boatRudderHolder(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){            
                yMinkCubeCyl(11,69,6, 4,   -0.5,0,0 );                
            for (i=[-30:20:30]){
                yCyl(1.7,10,    -1.5,i,0);
            }//for                                    
            yCyl(0.8,20,    2.6,0,0);
            yCyl(0.8,20,    30.4,0,0);
        }//difference
        
        difference(){
            yTube(34.5,27,6,    -1,0,0, sx=1.1);
            yCube(50,70,10, -25,0,0);
        }//difference
        yTube(5,0.8,8,    38,0,1);
        
        //top
        yMinkCubeSphere(4,4,52,1.9, 31.5,9,26,sx=2);
        yMinkCubeSphere(4,4,52,1.9, 31.5,-9,26,sx=2);
        yMinkCubeSphere(4,20,4,1.9, 31.5,0,50,sx=2.0);
        difference(){
            yMinkCubeSphere(4,4,56,1.9, 16.25,9,22,  0,35,0,sx=2);
            yCyl(3.7,20,    -1.5,10,0);
        }//difference
        difference(){
            yMinkCubeSphere(4,4,56,1.9, 16.25,-9,22,  0,35,0,sx=2);
            yCyl(3.7,20,    -1.5,-10,0);
        }//difference
        yTube(5,0.8,6,    38,0,51);
        if(isMetal){
            servoSg90(16.5,0,-2);
        }//isMetal
    }//transform
}//module

