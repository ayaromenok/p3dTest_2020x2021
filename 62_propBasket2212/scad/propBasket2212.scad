include <../../../lib/lib2.scad>
include <../../../lib/lib2/lib2_motor.scad>
include <../../../lib/lib2/lib2_prop.scad>

propBasket2212_back_inch5(0,0,36, 180,0,0);
propBasket2212_front_inch5();
engine2212_support(0,0,-33);

//engine2212_support(0,0,0, 0,0,45);
module engine2212_support(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        
        blMotor2212_bot(0,0,14);        
        yCube(8,6,4, 16,0,-1 );
        yCube(8,6,4, -16,0,-1 );
        yCube(6,8,4, 0,16,-1 );
        yCube(6,8,4, 0,-16,-1 );
        yCube(13,8,4, 10,10,-1, 0,0,45 );
        
        yTube(23.3,20,6);
        for (i=[0:45:360]){            
            rotate([0,0,i+22.5])
            yTube(3,0.9,33,  23,0,13.5);        
        }//for
        difference(){
            union(){
                yMinkCubeCyl(30,20,60,4, 36,36,12, 0,90,45);
                yMinkCubeCyl(30,40,5,4, 55.5,55.5,12, 0,90,45);
            }//union
            yCube(20,8,65, 36,36,12, 0,90,45);
            yCube(12,8,10,  45,45,25, 0,0,45);
            
            yCyl(1.8,15,  46,65,1.9,  0,90,45);
            yCyl(1.8,15,  46,65,21.9,  0,90,45);
            yCyl(1.8,15,  65,46,1.9,  0,90,45);
            yCyl(1.8,15,  65,46,21.9,  0,90,45);
        }//difference
    }//transform
}//module


module propBasket2212_back_inch5(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //blMotor2212(0,00,0);
        //blMotor2212_bot(0,0,0);
        //prop6035(0,0,20,   0,0,0);
        yTube(71.3,70,4);
        yTube(11.3,10,4);
        for (i=[0:45:360]){
            rotate([0,0,i])
            yCyl(1,60,  40,0,0,  0,90,0, sx=2);     
            
            rotate([0,0,i])
            yTube(3,1.7,16,  73,0,6);          
        }//for
    }//transform
}//module

module propBasket2212_front_inch5(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        blMotor2212(0,0,-15 ,0,0,22.5);
        blMotor2212_bot(0,0,-15, 0,0,22.5);
        prop5147_3(0,0,10,   0,0,0);
        
        yTube(71.3,70,6);        
        yTube(21.3,20,6);
        for (i=[0:45:360]){
            rotate([0,0,i])
            yCyl(1.5,50,  45,0,0,  0,90,0, sx=2);                
            
            rotate([0,0,i+22.5])
            yTube(3,1.7,6,  23,0,0);
            
            rotate([0,0,i])
            yTube(3,1.7,26,  73,0,10);
        }//for
    }//transform
}//module
