include <../../../lib/lib.scad>

lLength=50;
//long_T_simple(py=10,rz=0);
//long_T_withHoles(py=0);
//long_T_withTriangles();
module long_T_withQuads();
//simple
module long_T_simple(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        yCube(szx=lLength, szy=6, szz=0.6);
        yCube(szx=lLength, szy=0.6, szz=4, pz=3/2);
    }//translate
}//module

module long_T_withHoles(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(szx=lLength, szy=6, szz=0.6);
            for (i=[0:2.4:lLength]) {
                yCyl(rb=1, rt=1, px=(-lLength/2+i), py=-1.5);
                yCyl(rb=1, rt=1, px=(-lLength/2+i), py=1.5);
            }//for i
        }//diff
        difference(){
        yCube(szx=lLength, szy=0.6, szz=3, pz=3/2);
            for (i=[0:2.4:lLength]) {
                yCyl(rb=1, rt=1, px=(-lLength/2+i), py=0.5, pz=2, rx=90);
            }//fir i
        }//diff
    }//transform
}//module


module long_T_withTriangles(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(szx=lLength, szy=6, szz=0.6);
            for (i=[0:3:lLength]) {
                yCyl(rb=1.5, rt=1.5, px=(-lLength/2+i), py=-1, rz=30, fn=1);
                yCyl(rb=1.5, rt=1.5, px=(-lLength/2+i), py=1, rz=-30, fn=1);
            }//for i
        }//diff
        difference(){
        yCube(szx=lLength, szy=0.6, szz=3, pz=3/2);
            for (i=[0:3:lLength]) {
                yCyl(rb=1.5, rt=1.5, px=(-lLength/2+i), py=0.5, pz=1, rx=90, ry=30, fn=1);
            }//fir i
        }//diff
    }//transform
}//module