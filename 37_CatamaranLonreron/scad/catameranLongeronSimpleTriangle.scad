include <../../../lib/lib.scad>

catamaranLongeronSparsedTriangled(rx=90,rz=90);
//yPoly(p=[[3,-2.6],[0,2.6],[-3,-2.6]], szz=10);


module catamaranLongeronSparsedTriangled(length=120, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        _sizeInt=8;
        difference(){           
                union(){
                    _triPoly(72,120,0,27.73,0);                    
                }
                //holes
                yCyl(1.85,(length+2), 30,0);
                yCyl(1.85,(length+2), -30,0);
                yCyl(1.85,(length+2), 0,52);
            }//difference        
            
    }//transform
}//module

module _triPoly(size=6, length=120, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        sz2sin=(size/2)*sin(60);        
        yPoly(p=[[size/2,-sz2sin],[0,sz2sin],[-size/2,-sz2sin]], szz=length, pz=-length/2);
    }//transform
}//module

