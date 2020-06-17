include <../../../lib/lib.scad>
speakerBox(isAmp=true);
module speakerBox(px=0, py=0, pz=0, rx=0, ry=0, rz=0, isAmp=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            translate([-42,-77,80])
            rotate([-90,0,0])
            difference(){
                minkowski(){
                    yCube(84,84,120);
                    ySphere(2, 42,42,60);
                }//mink
                yCyl2(38.4,100,42,77,-42,90);
                yCube(84,94,120,42,32,60);
            }//dif
            yCyl(1.3,10,30,30);
            yCyl(1.3,10,30,-30);
            yCyl(1.3,10,-30,30);
            yCyl(1.3,10,-30,-30);    
            
            if (isAmp){
                //3.5mm jack
                yCyl(4,10, px=36, py=-66, pz=70, ry=90);
                //Volume
                yCyl(6,10, px=36, py=-56, pz=52, ry=90);
            }//is Ampz
        }//dif
        
    }//translate    
}//module

