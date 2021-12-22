include <../../../../p3d/lib/lib2.scad>

windowPart();

module windowPart(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCube(44,16,12, 0,0,3);
                yCube(18,5,6,   13,0,-6);
                yCube(18,5,6,   -13,0,-6);
            }//union
            yCyl(2.4,30,    0,0,0);
            yCyl(7,10,      11,-5,7);
            yCyl(7,10,      -11,-5,7);
            yCube(16,14,10,     18,-5,7);
            yCube(16,14,10,     -18,-5,7);
            yCyl(4,10,    0,0,9, 180);
            yCone(4,5,    0,0,1.7, 180);
        }//difference
        
        
        
    }//transform
}//module

