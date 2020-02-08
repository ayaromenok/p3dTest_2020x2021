include <../../08_scadSimplifyLib/scad/primitives.scad>

hCyl = 60;
//bottom platfrom
difference(){
    yCube(szx=hCyl, szy=hCyl, szz=5, px=(hCyl/2-7-12), py=(hCyl/2-7), pz=-19);
    //M6 holes for possible connect to table
    yCyl(szz=10,rb=3.4, rt=3.4, px=33, py=43, pz=-18);
    yCyl(szz=10,rb=3.4, rt=3.4, px=-12, py=43, pz=-18);
}
//axis X
holder10mm(px=(hCyl/2-7-12), py=15, pz=31, ry=90);
holder5mm(px=(hCyl/2-7-12), pz=0, ry=90);
//axis Y
holder10mm(px=15, py=(hCyl/2-7), pz=15, rx=90);
holder5mm(px=0, py=(hCyl/2-7), pz=-12, rx=90);
//axisZ holder - 26 degrees
holder8mm(px=-12, py=-7, pz=20, rx=-26);
//supports
//axis X support - 5mm
yCube(szx=12, szy=10, szz=14, px=-13, py=0, pz=-11);
yCube(szx=36, szy=10, szz=14, px=23, py=0, pz=-11);
//axis X support - 10mm
yCube(szx=12, szy=16, szz=40, px=-13, py=12, pz=3);
yCube(szx=14, szy=10, szz=30, px=0, py=(15), pz=8);
yCube(szx=18, szy=10, szz=40, px=32, py=(15), pz=3);
//axis Y support - 5mm - not required - lying on teh bottom platform
//axis Y support - 10mm
yCube(szx=16, szy=48, szz=28, px=15, py=29, pz=-5);
//axis Z support - 8mm
yCube(szx=12, szy=10, szz=22, px=-13, py=4, pz=16,rx=-13);


module holder5mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {
    translate([px, py, pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(rb=7, rt=7, szz=hCyl);
            yCyl(rb=2.8, rt=2.8, szz=hCyl+2);
        }//diff
    }//transform
}//module 5mm

module holder8mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {
    translate([px, py, pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(rb=9, rt=9, szz=hCyl);
            yCyl(rb=4.4, rt=4.4, szz=hCyl+2);
        }//diff
    }//transform
}//module 8mm

module holder10mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {
    translate([px, py, pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(rb=10, rt=10, szz=hCyl);
            yCyl(rb=5.4, rt=5.4, szz=hCyl+2);
        }//diff
    }//transform
}//module 10mm