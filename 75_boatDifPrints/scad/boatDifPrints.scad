include <../../../lib/lib2.scad>

boatDifPrintsHiSpeedTop(0,0,-94,    0,0,0, 1.7,1.4,3);
boatDifPrintsHiSpeedBot(0,0,0,    0,0,0, 1.7,1.4,1);
//boatDifPrintsMariner(0,0,0,    0,0,180, 0.35,0.4,0.6);
module boatDifPrintsHiSpeedTop(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        //scale([])
        difference(){
            rotate([0,0,180])        
                import("../stl/in/hull_complete.stl");
            yCube(500,200,100,  -250,0,-3);
        }//difference
        //import("../stl/in/hull_bow_129.stl");
    }//transform
}//module

module boatDifPrintsHiSpeedBot(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        //scale([])
        difference(){
            rotate([0,0,180])        
                import("../stl/in/hull_complete.stl");
            yCube(500,200,100,  -250,0,97);
        }//difference
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
