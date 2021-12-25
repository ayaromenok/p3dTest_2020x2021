include <../../../../p3d/lib/lib2.scad>
include <../../../../p3d/lib/lib2/ext/motor.scad>

engineTrustMeter();
//enough for 8", bigger can be test on side
module engineTrustMeter(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(45,28,10);
            //holes for MGN 12H
            yCyl(2,15,  10,10,0);
            yCyl(2,15,  10,-10,0);
            yCyl(2,15,  -10,10,0);
            yCyl(2,15,  -10,-10,0);
            yCone(4,5, 10,10,2.6, 180);
            yCone(4,5, 10,-10,2.6, 180);
            yCone(4,5, -10,10,2.6, 180);
            yCone(4,5, -10,-10,2.6, 180);            
        }//difference
        
        rotate([0,90,0])
        blMotor2212_botX(-100,0,-1,    0,0,45, height=8);
        difference(){
            yMinkCubeCyl(22,10,100,4,    0,0,50, sx=2);
            yCyl(5,20,  10,0,10, 90,0,0);
        }//difference
        //power holder
        difference(){
            yCyl(5,10,  0,-5,50, 0,90,0, sx=2);
            yCyl(5,11,  0,-3,54, 0,90,0, sx=2);
        }//difference
        difference(){
            yCyl(5,10,  0,5,50, 0,90,0, sx=2);
            yCyl(5,11,  0,3,54, 0,90,0, sx=2);
        }//difference
    }//transform
}//module

