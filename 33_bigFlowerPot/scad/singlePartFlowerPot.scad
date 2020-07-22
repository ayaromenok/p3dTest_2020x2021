include <../../../lib/lib.scad>

singlePartFlowerPot(80,60);

module singlePartFlowerPot(diameter=196, height=100, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        radius = (diameter>60)?(diameter/2):30;        
        height = (height>25)?height:25;
        
        difference(){
            union(){
                yCyl(rb=(radius-18), rt=(radius-3), szz=height, fn=4);
                yCyl(rb=radius-3-(18/height*10), rt=radius, szz=10, pz=height/2-5, fn=4);
            }
            yCyl(rb=(radius-18.4), rt=(radius-3.4), szz=height, pz=1.01, fn=2);
        }
    }//transform
}//module

