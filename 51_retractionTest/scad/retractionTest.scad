include <../../../lib/lib2.scad>

retractionTest();

module retractionTest(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCube(30,30,0.45);
        yCyl(rb=3,rt=0,szz=20,  px=10,py=10,pz=10);
        yCyl(rb=3,rt=0,szz=20,  px=-5,py=10,pz=10);
        yCyl(rb=3,rt=0,szz=20,  px=-10,py=-10,pz=10);
    }//transform
}//module

