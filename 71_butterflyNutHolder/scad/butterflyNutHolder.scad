include <../../../lib/lib2.scad>

butterflyNutHolder_m3();

module butterflyNutHolder_m3(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){                
                yCyl(5,3.5);
                yMinkCubeSphere(10,4,3, 1.1,    7,0,3,  0,-45,0);
                yMinkCubeSphere(10,4,3, 1.1,    -7,0,3,  0,45,0);
            }//union            
            yCyl(1.75,10);
            yTube(3.4,1.75,5,   0,0,1.5, 0,0,30,$fn=6);            
        }//difference
        
    }//transform
}//module

