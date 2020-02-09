include <../../08_scadSimplifyLib/scad/primitives.scad>

//Foundation
hFnd=10;
rFnd=30;
//Joint
jWidth=40;
jLength=30;

//yCyl(rb=rFnd, rt=rFnd*0.7, szz=hFnd);
//yCube(szx=20, szy=2, szz=10, py=10, pz=hFnd);
//yCube(szx=20, szy=2, szz=10, py=-10, pz=hFnd);
dualM5Holder(pz=-40);
singleM5Holder(px=0);

module singleM5Holder(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {    
    translate([px, py, pz])
    rotate([rx,ry,rz])
    {
        M8Holder();        
        M5Holder(px=9.8, py=0);
        yCube(szx=10, szy=(jWidth/2-2.7), szz=10, px=9.8, py=(jWidth/4+1.35));
        yCube(szx=10, szy=(jWidth/2-2.7), szz=10, px=9.8, py=(-jWidth/4-1.35));
    }//transform
}//module

module dualM5Holder(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {    
    translate([px, py, pz])
    rotate([rx,ry,rz])
    {
        M8Holder();
        M5Holder(px=9.8, py=(jWidth/2-5));
        M5Holder(px=9.8, py=(-jWidth/2+5));
        yCube(szx=10, szy=(jWidth-20+4.4), szz=10, px=9.8);
    }//transform
}//module

module M5Holder(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {    
    translate([px, py, pz])
    rotate([rx,ry,rz])
    {
        difference(){
        yCyl2(rb=5, rt=5, szz=jLength, rx=0);
        yCyl2(rb=2.7, rt=2.7, szz=jLength+2, rx=0);
        }//diff
    }//transform
}//module

module M8Holder(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {    
    translate([px, py, pz])
    rotate([rx+90,ry,rz])
    {
        difference(){
        yCyl2(rb=7, rt=7, szz=jWidth, rx=0);
        yCyl2(rb=4.4, rt=4.4, szz=jWidth+2, rx=0);
        }//diff
    }//transform
}//module