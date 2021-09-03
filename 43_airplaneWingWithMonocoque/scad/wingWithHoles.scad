include <../../../lib/lib2.scad>
//main idea - make a section fro front, middle,back section of wing and use it in check order 
//proportion 1/5, 2/5, 2/5

//wingWithHolesNervure();
wingWithHoles();

module wingWithHoles(px=0, py=0, pz=0, rx=0, ry=0, rz=0, length=200, height=20, thickness=10){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(10,100,sx=5);
            yCyl(9.55,110,sx=5.15);
        }//difference
        yTube(4.75,4.3,100);
        yCube(0.45,6,100,    -3,7,0, 0,0,30);
        yCube(0.45,6,100,    3,7,0, 0,0,-30);
        yCube(0.45,5,100,    0,-7,0);
        wingWithHolesNervure();
        wingWithHolesNervure(0,0,-49.4);
        wingWithHolesNervure(0,0,49.4);
    }//transform
}//module

module wingWithHolesNervure(px=0, py=0, pz=0, rx=0, ry=0, rz=0, length=200, height=20, thickness=10){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(9.56,1.2,sx=5.15);
            yCyl(9.35,2,sx=5.2);
        }//difference
        translate([0,0,0.2]){
        difference(){            
            yCyl(9.35,0.8,sx=5.2);
            yCyl(9.15,2,sx=5.3);
        }//difference
        }
        translate([0,0,0.4])
        difference(){            
            yCyl(9.15,0.4,sx=5.3);
            yCyl(8.9,2,sx=5.4);
        }//difference
        yCube(0.8,15,1.2,   30,0,0,  0,0,0);
        yCube(0.8,15,1.2,   -30,0,0,  0,0,0);
        yCube(0.8,20,1.2,   15,-0.5,0,  0,0,-30);
        yCube(0.8,20,1.2,   -15,-0.5,0,  0,0,30);
    }//transform
}//module        