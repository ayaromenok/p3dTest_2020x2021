include <../../05_PanzerWheel/scad/simplePartsLib.scad>


//chassis(px=15, py=9,pz=10);
//torsion();
//torsion(px=17.3, py=5, pz=10, rx=-90, ry=150, showMetall=true);
//roadWheelExt(px=0);
//torsion(px=47.3, py=5, pz=10, rx=-90, ry=150, showMetall=true);
//roadWheelInt(px=30);
//torsion(px=12.7, py=61, pz=10, rx=-90, ry=150, rz=180, showMetall=true);
//torsion(px=(12.7-30), py=61, pz=10, rx=-90, ry=150, rz=180, showMetall=true);

module chassis(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        
        difference(){
            yCube(szx=80, szy=3, szz=8);
            yCyl(rb=2.4, rt=2.4, szz=10, px=32.4, py=5, pz=5, rx=90);
            yCyl(rb=2.4, rt=2.4, szz=10, px=2.4, py=5, pz=5, rx=90);
        }//dif
        difference(){
            yCube(szx=80, szy=3, szz=8, py=48);
            yCyl(rb=2.4, rt=2.4, szz=10, px=-32.2, py=53, pz=5, rx=90);
            yCyl(rb=2.4, rt=2.4, szz=10, px=-2.2, py=53, pz=5, rx=90);
        }//dif
        
        //
        yCube(szx=3, szy=50, szz=8, px=38, py=24);
        yCube(szx=3, szy=50, szz=8, px=-38, py=24);       
        torsionHolder();
        torsionHolder(px=-30);
        torsionHolder(py=48,rz=180);
        torsionHolder(px=30,py=48,rz=180);
        
    }//transform
}//module chassis

module torsionHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(szx=3.5, szy=6, szz=6, px=-2.2, py=3, ry=30);
            yCube(szx=1.5, szy=8, szz=3.6, px=-2.2, py=3, ry=30);
        }//dif
    }//transform
}//torsionHolder

module torsion(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        yCyl(rb=3, rt=3, szz=3, pz=0.5);
        yCyl(rb=2, rt=2, szz=6, pz=4);
        
        //torsion itself
        difference(){
            yCube(szx=1.0, szy=3, szz=50, pz=25);
            yCyl(rb=0.8, rt=0.8, szz=5, px=-2.5, pz=50, ry=90);
        }
        
        yCube(szx=17, szy=4, szz=2, px=10, py=1);
        difference(){
            yCyl(rb=3, rt=3, szz=3, px=20, pz=-0.5);
            yCyl(rb=1.2, rt=1.2, szz=5, px=20);
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
