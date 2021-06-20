include <../../../lib/lib2.scad>

//StlOperationInScadFront(0,0,0, 180,0,0);
//StlOperationInScadCenter(0,0,0, 180,0,0);
//StlOperationInScadBack(0,0,0, 180,0,0);

StlOperationInScadFront(-200,0,0);
StlOperationInScadCenter(-200,0,0);
StlOperationInScadBack(-200,0,0);

module StlOperationInScadFront(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        //yCube(30,20,10);
        difference(){
            translate([-0,0,0])
            scale([1.2,0.5,1])
            import("../stl/hull_complete.stl");
        
            //yCube(220,100,50,   100,0,85);
            yCube(400,100,150,   400,0,50);                            
            for (i=[-0:20:200]){
                yCyl(0.9,30,    i,10,60);
                yCyl(0.9,30,    i,-10,60);
            }//for
        }//difference       
             
        //yCube(200,50,10,    0,0,0);    
    }//transform
}//module


module StlOperationInScadCenter(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        //yCube(30,20,10);
        difference(){
            union(){
                translate([0,0,0])
                scale([1.2,0.50,1])
                    import("../stl/hull_complete.stl");
                //translate([0,0,-1.2])
                //scale([1.2,0.52,1])
                //    import("../stl/deck_complete.stl");
                yCube(360,40,10,   372,0,65);        
            }//union
            yCube(400,100,150,   600,0,50);
            yCube(400,100,150,   0,0,50);
            for (i=[200:20:400]){
                yCyl(0.9,30,    i,10,60);
                yCyl(0.9,30,    i,-10,60);
            }//for            
        }//difference  
    }//transform
}//module

module StlOperationInScadBack(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        //yCube(30,20,10);
        difference(){
            union(){
                translate([-0,0,0])
                scale([1.2,0.5,1])
                import("../stl/hull_complete.stl");
                yCube(360,40,10,   372,0,65);        
            }//union
            yCube(400,100,150,   800,0,50);
            yCube(400,100,150,   200,0,50);
            for (i=[400:20:600]){
                yCyl(0.9,30,    i,10,60);
                yCyl(0.9,30,    i,-10,60);
            }//for            
        }//difference        
    }//transform
}//module

