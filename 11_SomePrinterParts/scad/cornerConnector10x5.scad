include <../../08_scadSimplifyLib/scad/primitives.scad>

hCyl = 10;

holder10mm();
holder5mm(px=14);
holder10mm(px=-18, pz=5, rx=90);
holder5mm(px=24, pz=2, rx=90);

module holder10mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {
    translate([px, py, pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(rb=10, rt=10, szz=hCyl);
            yCyl(rb=5.4, rt=5.4, szz=hCyl+2);
        }//diff
    }//transform
}//module 10mm

module holder5mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0) {
    translate([px, py, pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(rb=7, rt=7, szz=hCyl);
            yCyl(rb=2.8, rt=2.8, szz=hCyl+2);
        }//diff
    }//transform
}//module 5mm