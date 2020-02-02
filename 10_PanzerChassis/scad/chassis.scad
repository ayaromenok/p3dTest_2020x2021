include <../../05_PanzerWheel/scad/simplePartsLib.scad>

//roadWheelExt(30);
//roadWheelInt();
torsion(showMetall=true);

module chassis(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
    }//transform
}//module chassis

module torsion(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetall=false){
    translate([px,py,pz])
    rotate([rx,ry,rz]){
        yCyl(rb=3, rt=3, szz=3);
        yCyl(rb=2, rt=2, szz=6, pz=4);
        
        difference(){
            yCube(szx=1.5, szy=3, szz=50, pz=25);
            yCyl(rb=0.8, rt=0.8, szz=5, px=-2.5, pz=50, ry=90);
        }
        
        yCube(szx=17, szy=4, szz=2, px=10, py=1);
        difference(){
            yCyl(rb=3, rt=3, szz=3, px=20);
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
