include <../../../lib/lib.scad>

singlePartFlowerPot(110,70);


module singlePartFlowerPot(diameter=200, height=120, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        radius = (diameter>60)?(diameter/2):30;        
        height = (height>25)?height:25;
        
        difference(){
            union(){
                yCyl(rb=(radius-15), rt=radius, szz=height, fn=4);
                yCyl(rb=radius, rt=radius, szz=height/8, pz=height/2-height/16, fn=4);
                yCyl(rb=radius-3-(18/height*8), rt=radius, szz=height/8, pz=height/2-height/8-height/16, fn=4);        }//union
            yCyl(rb=(radius-15.4), rt=(radius-0.4), szz=height, pz=1.01, fn=2);
        }//diff
    }//transform
}//module

module singleCylTest(diameter=196, height=100, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(10,20);
            yCyl(9.3, 20,0,0,1.01);
        }
    }//transform
}//module
