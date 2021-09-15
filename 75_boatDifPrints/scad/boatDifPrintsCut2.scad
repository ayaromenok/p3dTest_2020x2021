include <../../../lib/lib2.scad>

//yCube(20,20,50);
//infill 8%
//trim 4mm
//boatDifPrintsHiSpeedTop(0,0,39,    0,0,0, 1.7,1.3,1.5);
//boatDifPrintsHiSpeedMiddle(0,0,-263.2,    0,0,0, 1.7,1.3,7);
//boatDifPrintsHiSpeedBot(0,0,0,    0,0,0, 1.7,1.3,1.4);

//todo - recheck
//boatDifPrintsHiSpeedCut2(part=0);
//boatDifPrintsHiSpeedCut2(part=1);
//boatDifPrintsHiSpeedCut2(part=2);//don't need to cut - almost - engine holders
//boatDifPrintsHiSpeedCut2(part=3);//don't need to cut - almost - engine holders

//boatDifPrintsHiSpeedCut2(rx=180,part=0);
//boatDifPrintsMariner(0,0,0,    0,0,180, 0.35,0.4,0.6);

module boatDifPrintsHiSpeedCut2(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, part=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        difference(){
            union(){
                //boatDifPrintsHiSpeedTop(0,0,39,    0,0,0, 1.7,1.3,1.5);
                boatDifPrintsHiSpeedMiddle(0,0,-263.2,    0,0,0, 1.7,1.3,7);
                boatDifPrintsHiSpeedBot(0,0,0,    0,0,0, 1.7,1.3,1.4);
            }//union
            if(part<2){
                difference(){
                    union(){
                        if(part==0){
                            boatDifPrintsHiSpeedMiddle(-3,0,-263.2,    0,0,0, 1.67,1.25,7);
                            boatDifPrintsHiSpeedBot(-2,0,2,    0,0,0, 1.65,1.25,1.4);
                            //boatDifPrintsHiSpeedMiddle(-2,0,-97,    0,0,0, 1.67,1.25,3.1);
                        }else{
                            boatDifPrintsHiSpeedMiddle(-6,0,-263.2,    0,0,0, 1.67,1.25,7);
                            boatDifPrintsHiSpeedBot(-10,0,2,    0,0,0, 1.65,1.25,1.4);
                            //boatDifPrintsHiSpeedMiddle(0,0,-97,    0,0,0, 1.67,1.25,3.1);
                        }//if part ==0/1
                        //boatDifPrintsHiSpeedBot(-2,0,2,    0,0,0, 1.65,1.25,1.4);
                        //boatDifPrintsHiSpeedBot(0,0,2,    0,0,0, 1.65,1.35,1);
                    }//union
                    yCube(800,210,170,  398-200*part,0,75);
                    yCube(800,210,170,  -596-200*part,0,75);
                }//difference
            }//if (part>1)
            yCube(800,210,170,  400-200*part,0,75);
            yCube(800,210,170,  -600-200*part,0,75);
        }//difference         
    }//transform
}//module



module boatDifPrintsHiSpeedTop(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){        
        difference(){            
            rotate([0,0,180])        
                import("../stl/in/hull_complete.stl");
            yCube(500,200,100,  -250,0,5.2);
        }//difference        
    }//transform
}//module

module boatDifPrintsHiSpeedMiddle(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){  
        difference(){
            translate([0,0,0])            
            rotate([0,0,180])        
                import("../stl/in/hull_complete.stl");
            yCube(500,200,100,  -250,0,-3);
            yCube(500,200,100,  -250,0,105);
       }//difference                
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
