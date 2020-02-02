include <../../05_PanzerWheel/scad/simplePartsLib.scad>

//roadWheelExt(30);
//roadWheelInt();
module roadWheelExt(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){    
        roadWheel(support=1, py=-10, rx=90);
        roadWheel(support=8, supBolts=false, py=-7, rx=-90);
    }//transform
}


module roadWheelInt(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){    
        roadWheel(support=8, py=-3, rx=90);
        roadWheel(support=1, supBolts=false, py=0, rx=-90);
    }//transform
}

module roadWheelExtDual(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){    
        roadWheel(support=1, py=-10, rx=90);
        roadWheel(support=2, supBolts=false, py=-7, rx=-90);

        roadWheel(supBolts=false, py=-2, rx=90);
        roadWheel(support=16, supBolts=false, py=1, rx=-90);
    }//transform
}

module roadWheelIntDual(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px,py,pz])
    rotate([rx,ry,rz]){    
        roadWheel(support=16, py=-10, rx=90);
        roadWheel(support=2, supBolts=false, py=-7, rx=-90);

        roadWheel(supBolts=false, py=-2, rx=90);
        roadWheel(support=1, supBolts=false, py=1, rx=-90);
    }//transform
}
