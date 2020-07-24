include <../../../lib/lib.scad>

catamaranLongeronSparsedTriangled(rx=90,rz=90);
//yPoly(p=[[3,-2.6],[0,2.6],[-3,-2.6]], szz=10);


module catamaranLongeronSparsedTriangled(length=120, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        _sizeInt=8;
        difference(){           
                union(){
                    
                    //yCyl(4,length, 30,0);            
                    //yCyl(4,length, -30,0);            
                    //yCyl(4,length, 0, 52);
                    _triPoly(12,length, 30, 1.73);
                    _triPoly(12,length, -30, 1.73);
                    _triPoly(12,length, 0, 53.73);
                    
                    _triPoly(_sizeInt,60,   0,0,0,          0,90,0);
                    _triPoly(_sizeInt,60,   -15,26,0,       90,90,-30);
                    _triPoly(_sizeInt,60,   15,26,0,        90,-90,30);                    
                    
                    _triPoly(_sizeInt,60,   0,0,60,         0,90,0);
                    _triPoly(_sizeInt,60,   -15,26,60,      90,90,-30);
                    _triPoly(_sizeInt,60,   15,26,60,       -90,90,30);
                    
                    _triPoly(_sizeInt,60,   0,0,-60,        0,90,0);
                    _triPoly(_sizeInt,60,   -15,26,-60,     90,90,-30);
                    _triPoly(_sizeInt,60,   15,26,-60,      90,-90,30);                    
                    
                    _triPoly(_sizeInt,78,   0,0,30,         0,45,0);                    
                    _triPoly(_sizeInt,78,   15,26,30,      0,45,120);
                    _triPoly(_sizeInt,78,   -15,26,30,      0,45,-120);
                    
                    _triPoly(_sizeInt,78,   0,0,-30,         0,-45,0);                    
                    _triPoly(_sizeInt,78,   15,26,-30,      0,-45,120);
                    _triPoly(_sizeInt,78,   -15,26,-30,      0,-45,-120);                    
                }
                //holes
                yCyl(1.85,(length+2), 30,0);
                yCyl(1.85,(length+2), -30,0);
                yCyl(1.85,(length+2), 0,52);
                
                //cut sides
                _triPoly(80,10,0,26,-65);    
                _triPoly(80,10,0,26,65);    
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

