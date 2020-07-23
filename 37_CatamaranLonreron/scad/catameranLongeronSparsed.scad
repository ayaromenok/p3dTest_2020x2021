include <../../../lib/lib.scad>

catamaranLongeronSparsed(rx=90);

module catamaranLongeronSparsed(length=120, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){           
                union(){
                    yCyl(4,length, 30,0);            
                    yCyl(4,length, -30,0);            
                    yCyl(4,length, 0, 52);
                    
                    yCube(60,8,8,0,0);
                    yCube(60,8,8,-15,26,0,0,0,60);
                    yCube(60,8,8,15,26,0,0,0,-60);
                    
                    yCube(58,8,4, 0,0,58);
                    yCube(60,8,4, -15,26,58, 0,0,60);
                    yCube(60,8,4, 15,26,58,  0,0,-60);
                    
                    yCube(58,8,4, 0,0,-58);
                    yCube(60,8,4, -15,26,-58, 0,0,60);
                    yCube(60,8,4, 15,26,-58,  0,0,-60);
                    
                    yCube(78,8,4,   0,0,30,     0,45,0);
                    yCube(78,8,4,   15,26,30,   0,45,-60);
                    yCube(78,8,4,   -15,26,30,  0,45,60);
                    
                    yCube(78,8,4,   0,0,-30,     0,-45,0);
                    yCube(78,8,4,   15,26,-30,   0,-45,-60);
                    yCube(78,8,4,   -15,26,-30,  0,-45,60);
                }
                yCyl(1.85,(length+2), 30,0);
                yCyl(1.85,(length+2), -30,0);
                yCyl(1.85,(length+2), 0,52);
                
            }//difference        
    }//transform
}//module

