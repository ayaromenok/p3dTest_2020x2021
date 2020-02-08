include <../../08_scadSimplifyLib/scad/primitives.scad>

hCyl = 60;

yCube(szx=hCyl, szy=hCyl, szz=5, px=(hCyl/2-7-12), py=(hCyl/2-7), pz=-19);
//axis X
holder10mm(px=(hCyl/2-7-12), py=15, pz=30, ry=90);
holder5mm(px=(hCyl/2-7-12), pz=0, ry=90);
//axis Y
holder10mm(px=15, py=(hCyl/2-7), pz=15, rx=90);
holder5mm(px=0, py=(hCyl/2-7), pz=-12, rx=90);
//axisZ holder
holder8mm(px=-12, py=-7, pz=20, rx=-22);
//supports

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