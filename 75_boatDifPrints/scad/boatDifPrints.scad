include <../../../lib/lib2.scad>

//boatDifPrints(0,0,0,    0,90,90, 1,1,1);
boatDifPrintsMariner(0,0,0,    0,0,180, 0.35,0.4,0.6);
module boatDifPrints(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        import("../stl/in/hull_complete.stl");
        //import("../stl/in/hull_bow_129.stl");
    }//transform
}//module

module boatDifPrintsMariner(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        import("../stl/in/Mariner_Hull_T2.stl");
        //import("../stl/in/hull_bow_129.stl");
    }//transform
}//module
