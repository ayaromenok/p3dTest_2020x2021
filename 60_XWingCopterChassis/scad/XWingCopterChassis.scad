include <../../../lib/lib2.scad>
include <libBlMotor.scad>
include <libProp.scad>

XWingCopterChassis();
//armCyl();
module XWingCopterChassis(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yMinkCubeCyl(60,30,8);
            yMinkCubeCyl(52,22,10);
        }
        
        armCyl(60,4,    40,30,0,     0,0,60,     1,0.8,1,   isMetal=true);
        armCyl(60,4,    40,-30,0,    0,0,-60,    1,0.8,1,   isMetal=true);
        armCyl(60,4,    -40,30,0,    0,0,120,    1,0.8,1,   isMetal=true);
        armCyl(60,4,    -40,-30,0,   0,0,-120,   1,0.8,1,   isMetal=true);
        //armCyl();
    }//transform
}//module

module armCyl(length=100, radius=4, px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, isMetal=true){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        _l = length;
        _r = radius;
        yCube(10, _r*2, _r*2, -_l/2+_r,0,0);
        blMotor1104_bot(_l/2-_r,0,4,  0,0,45);
        difference(){
            yCube(10, _r*2, _r*2, _l/2-_r,0,0);
            translate([_l/2-_r,0,0])
            rotate([0,0,45]){
                yCyl(2.5,5,  0,0,3);
                yCyl(2.5,10,  4.5,0,0);
                yCyl(2.5,10,  -4.5,0,0);
                yCyl(2.5,10,  0,4.5,0);
                yCyl(2.5,10,  0,-4.5,0);
            }//translate
        }//difference
        //arm
        yCyl(_r,_l-_r*4,    0,0,0,  0,90,0);
        if (isMetal){
            color("lightblue")
            prop2345_3(_l/2-_r,0,20, 0,0,-30);
            color("darkblue")
            blMotor1104(_l/2-_r,0,13,   0,0,45);        
        }//if
    }//transform
}//module
