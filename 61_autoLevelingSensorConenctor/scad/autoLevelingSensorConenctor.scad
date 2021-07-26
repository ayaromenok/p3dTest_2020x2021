include <../../../lib/lib2.scad>

//200x200
/*
difference(){
    yCube(200,200,1.5);
    yCube(199.15,199.15,2.3);
}
*
//100x100 
/*
difference(){
    yCube(100,100,1.5);
    yCube(99.15,99.15,2.3);
}*/
//autoLevelingSensorConenctor();

module autoLevelingSensorConenctor(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //44.6
        translate([0,7,4.5])
        rotate([90,0,0])
        difference(){
            yMinkCubeCyl(40,12,3,4);
            yCyl(1.7,10,    9,3.5,0);
            yCyl(1.7,10,    -9,3.5,0);
        }//difference
        difference(){
            yMinkCubeCyl(40,40,3,4);
            yCyl(18,10);
            yCyl(2,10,  16,16,0);
            yCyl(2,10,  16,-16,0);
            yCyl(2,10,  -16,16,0);
            yCyl(2,10,  -16,-16,0);
        }//difference
        yCube(2,15,8, 19,0,5);
        yCube(2,15,8, -19,0,5);
    }//transform
}//module

