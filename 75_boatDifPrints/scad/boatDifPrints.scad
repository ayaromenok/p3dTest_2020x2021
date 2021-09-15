include <../../../lib/lib2.scad>

//yCube(800,190,150,  -400,0,,75);
//infill 8%
//trim 4mm
boatDifPrintsHiSpeedCut2(part=0);
//boatDifPrintsHiSpeedCut2(part=1);//ok
//boatDifPrintsHiSpeedCut2(part=2);//almost - engine holders
//boatDifPrintsHiSpeedCut2(part=3);//almost - engine holders

//boatDifPrintsHiSpeedCut2(rx=180,part=0);

module boatDifPrintsHiSpeedCut2(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, part=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        difference(){
            union(){
                //boatDifPrintsHiSpeedTop(0,0,-73,    0,0,0, 1.7,1.4,3);
                boatDifPrintsHiSpeedMiddle(0,0,-94,    0,0,0, 1.7,1.4,3);
                boatDifPrintsHiSpeedBot(0,0,0,    0,0,0, 1.7,1.4,1);
            }//union
            difference(){
                union(){
                    if(part==0){
                        boatDifPrintsHiSpeedMiddle(-2,0,-97,    0,0,0, 1.67,1.35,3.1);
                    }else{
                        boatDifPrintsHiSpeedMiddle(0,0,-97,    0,0,0, 1.67,1.35,3.1);
                    }//if part ==0
                    boatDifPrintsHiSpeedBot(0,0,2,    0,0,0, 1.65,1.35,1);
                }//union
                yCube(800,210,170,  400-200*part,0,75);
                yCube(800,210,170,  -599-200*part,0,75);
            }//difference
            yCube(800,210,170,  400-200*part,0,75);
            yCube(800,210,170,  -600-200*part,0,75);
        }//difference        
    }//transform
}//module

module boatDifPrintsHiSpeedCut(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, part=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        difference(){
            union(){
                boatDifPrintsHiSpeedTop(0,0,-73,    0,0,0, 1.7,1.4,3);
                boatDifPrintsHiSpeedMiddle(0,0,-94,    0,0,0, 1.7,1.4,3);
                boatDifPrintsHiSpeedBot(0,0,0,    0,0,0, 1.7,1.4,1);
            }//union
            yCube(800,210,170,  400-200*part,0,75);
            yCube(800,210,170,  -600-200*part,0,75);
        }//difference        
    }//transform
}//module

//boatDifPrintsMariner(0,0,0,    0,0,180, 0.35,0.4,0.6);
module boatDifPrintsHiSpeedTop(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        //scale([])
        difference(){
            scale([1,0.95,1])
            rotate([0,0,180])        
                import("../stl/in/hull_complete.stl");
            yCube(500,200,100,  -250,0,4);
        }//difference        
    }//transform
}//module

module boatDifPrintsHiSpeedMiddle(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        //scale([])
        difference(){
            translate([0,0,-47])
            scale([1,0.95,2])
            rotate([0,0,180])        
                import("../stl/in/hull_complete.stl");
            yCube(500,200,100,  -250,0,-3);
            yCube(500,200,100,  -250,0,111);
        }//difference                
    }//transform
}//module

module boatDifPrintsHiSpeedBot(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        //scale([])
        difference(){
            scale([1,0.95,1])
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
