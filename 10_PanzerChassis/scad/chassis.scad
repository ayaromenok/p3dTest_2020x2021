include <../../05_PanzerWheel/scad/simplePartsLib.scad>

//torsion(rx=-90);
//cap();
//*
//chassis(px=15, py=9,pz=10);
/*
for (i=[0:60:170]){ 
    //single wheel
    torsion(px=-12.1+i, py=1, pz=9, rx=-90, ry=150, showMetall=true);
    roadWheelExt(px=-30+i, py=-6);
    torsion(px=(47.8-90)+i, py=1, pz=9, rx=-90, ry=150, showMetall=true);
    roadWheelInt(px=-60+i, py=-6);
    
   //dual wheel 
    torsion(px=12.7-60+i, py=62, pz=10, rx=-90, ry=150, rz=180, showMetall=true);
    roadWheelIntDual(px=-60+i, py=69, rz=180);
    torsion(px=(12.7-90)+i, py=62, pz=10, rx=-90, ry=150, rz=180, showMetall=true);  
    roadWheelExtDual(px=-30+i, py=86, rz=180);
 }//for
//*/
module chassis(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        
        difference(){
            yCube(szx=200, szy=7, szz=8, py=-2);
            for (i=[0:30:200]){ 
                yCyl(rb=2.5, rt=2.5, szz=10, px=92.4-i, py=4, pz=5, rx=90);                
            }//for
        }//dif
        
        difference(){
            yCube(szx=200, szy=7, szz=8, py=47);
            for (i=[0:30:200]){ 
                yCyl(rb=2.5, rt=2.5, szz=10, px=87.8-i, py=53, pz=5, rx=90);
            }//for        
        }//dif
        
        //perpendicular
        yCube(szx=3, szy=50, szz=8, px=48, py=24);
        yCube(szx=3, szy=50, szz=8, px=-48, py=24);       
        
        //holders
        for (i=[0:30:200]){ 
            torsionHolder(px=-90+i,py=2);
        }//for
        
        for (i=[0:30:200]){ 
            torsionHolder(px=-90+i,py=44,rz=180);
        }//for
        
        
    }//transform
}//module chassis

module torsionHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(szx=3.5, szy=6, szz=7, px=-2.2, py=3, ry=30);
            yCube(szx=1.5, szy=8, szz=4.4, px=-2.2, py=3, ry=30);
        }//dif
    }//transform
}//torsionHolder

module cap(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(rb=3, rt=3, szz=3, pz=1.5);
            yCyl(rb=1.2, rt=1.2, szz=5, pz=1);
        }//dif
    }
}//module     
module torsion(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        yCyl(rb=3, rt=3, szz=3.5, pz=0.25);
        yCyl(rb=2, rt=2, szz=14, py=1, pz=8);
        
        //torsion itself
        difference(){
            yCube(szx=1.0, szy=4, szz=50, py=1,pz=25);
            yCyl(rb=0.8, rt=0.8, szz=5, px=-2.5, py=1, pz=50, ry=90);
        }
        
        yCube(szx=17, szy=4, szz=3, px=10, py=1);
        difference(){
            yCyl(rb=3, rt=3, szz=5, px=20, pz=-1.5);
            yCyl(rb=1.2, rt=1.2, szz=10, px=20);
        }//dif
        if (showMetall){
            yCyl(rb=1.2, rt=1.2, szz=40, px=20, pz=-19);
            }
        
    } //transform
}//module torsion

module roadWheelExt(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){    
        roadWheel(support=1, py=-10, rx=90);
        roadWheel(support=8, supBolts=false, py=-7, rx=-90);
    }//transform
}//module roadWheelExt


module roadWheelInt(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){    
        roadWheel(support=8, py=-3, rx=90);
        roadWheel(support=1, supBolts=false, py=0, rx=-90);
    }//transform
}//module roadWheelInt

module roadWheelExtDual(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){    
        roadWheel(support=1, py=-10, rx=90);
        roadWheel(support=2, supBolts=false, py=-7, rx=-90);

        roadWheel(supBolts=false, py=-2, rx=90);
        roadWheel(support=16, supBolts=false, py=1, rx=-90);
    }//transform
}//module roadWheelExtDual

module roadWheelIntDual(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){    
        roadWheel(support=16, py=-10, rx=90);
        roadWheel(support=2, supBolts=false, py=-7, rx=-90);

        roadWheel(supBolts=false, py=-2, rx=90);
        roadWheel(support=1, supBolts=false, py=1, rx=-90);
    }//transform
}//module roadWheelIntDual
