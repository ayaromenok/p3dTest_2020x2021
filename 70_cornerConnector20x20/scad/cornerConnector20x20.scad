include <../../../lib/lib2.scad>


//cornerConnector20x20();
cornerConnector20x20(rx=180, isLight=true);
//cornerConnector20x20(rx=180);

//alu20x20_cut(50);
//nutsHolderM3_20x20(rx=180);

module nutsHolderM3_20x20(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(40,10,4,  0,10,2, 0,0,90);  
            //alu20x20_cut(50, 0,15,-5, 90);           
            yCube(6,50,6,   6.5,10,0, 0,45,0);
            yCube(6,50,6,   -6.5,10,0, 0,45,0);
            yCube(5,20,5,   4,10,3);    
            yCube(5,20,5,   -4,10,3);    
            
            //M3 nuts holes
            yCyl(3.5/2,10,    0,-5,0);
            yCyl(3.5/2,10,    0,25,0);                        
            yTube(3.4,1.75,5,   0,-5,0.4, 0,0,30,$fn=6);
            yTube(3.4,1.75,5,   0,25,0.4, 0,0,30,$fn=6);                
        }//difference      
        
    }//transform
}//module

module cornerConnector20x20(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isLight=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCube(40,20,6,  30,0,1.5);
                yCube(40,20,6,  0,9,1.5, 0,0,90);
            }//union            
            alu20x20_cut(50, 0,14.6,-10, 90);
            alu20x20_cut(50, 34.6,0,-10, 90,0,90);
            
            //M3 holes
            yCyl(3.5/2,10,    0,-5,0);
            yCyl(3.5/2,10,    0,25,0);
            yCyl(3.5/2,10,    15,0,0);
            yCyl(3.5/2,10,    45,0,0);
            yCone(3.5,3, 0,-5,-0.7, 180);
            yCone(3.5,3, 0,25,-0.7, 180);
            yCone(3.5,3, 15,0,-0.7, 180);
            yCone(3.5,3, 45,0,-0.7, 180);
            yCyl(3.5,5,    0,-5,3);
            yCyl(3.5,5,    0,25,3);
            yCyl(3.5,5,    15,0,3);
            yCyl(3.5,5,    45,0,3);
            
            if (isLight){
                yMinkCubeCyl(13,22,10,4,    0,10,2);
                yMinkCubeCyl(22,13,10,4,    30,0,2);
            }//if
        }//difference
        
    }//transform
}//module


module alu20x20_cut(length=100, px=0,py=0,pz=0,  rx=0,ry=0,rz=0,     mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
        difference(){
            linear_extrude(height = length, center = true, convexity = 10)
                        scale([1.0,1.0,1])
                        import(file = "../dxf/alu20x20_cut.dxf");
            yCube(4,4,length,   0,10,0);
            yCube(4,4,length,   0,-10,0);
            yCube(4,4,length,   10,0,0);
            yCube(4,4,length,   -10,0,0);
        }//difference
    }//transform
}//module

module alu20x20(length=100, px=0,py=0,pz=0,  rx=0,ry=0,rz=0,     mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
        linear_extrude(height = length, center = true, convexity = 10)
                        import(file = "../dxf/alu20x20.dxf");
    }//transform
}//module
