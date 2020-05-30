include <../../../lib/lib.scad>
speakerBox();
module speakerBox(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            translate([-42,-77,80])
            rotate([-90,0,0])
            difference(){
                minkowski(){
                    yCube(84,84,120);
                    ySphere(2, 42,42,60);
                }//mink
                yCyl2(38.4,100,42,77,-42,90);
                yCube(84,94,120,42,32,60);
            }//dif
            yCyl(1.3,10,30,30);
            yCyl(1.3,10,30,-30);
            yCyl(1.3,10,-30,30);
            yCyl(1.3,10,-30,-30);    
        }//dif
    }//translate    
}//module

