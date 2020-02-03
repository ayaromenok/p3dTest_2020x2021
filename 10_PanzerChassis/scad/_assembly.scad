include <chassis.scad>

chassis(px=15, py=9,pz=10);
for (i=[0:60:170]){ 
    //single wheel
    torsion(px=-12.1+i, py=1, pz=9, rx=-90, ry=150, showMetall=true);
    roadWheelExt(px=-30+i, py=-6);
    torsion(px=(47.8-90)+i, py=1, pz=9, rx=-90, ry=150, showMetall=true);
    roadWheelInt(px=-60+i, py=-6);
    
   //dual wheel 
    torsion(px=12.7-60+i, py=62, pz=10, rx=-90, ry=150, rz=180, showMetall=true);
    roadWheelIntDual(px=-60+i, py=69, rz=180);
    torsion(px=(12.7-90)+i, py=62, pz=10, rx=-90, ry=150, rz=180, showMetall=true);  
    roadWheelExtDual(px=-30+i, py=86, rz=180);
 }//for