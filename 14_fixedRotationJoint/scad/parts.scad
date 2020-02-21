include <../../../lib/lib.scad>

tAngle = 10;
tRad = 6;
tLength = tRad*3*cos(tAngle)/sin(tAngle);

difference(){
    scale([0.15,0.15,0.15]){
        yCyl2(rb=tLength, rt=tLength, szz=tRad, pz=tRad/2,rx=-90);
        for (i=[0:tAngle:360]){
            yCyl(rb=0, rt=tRad, szz=tLength, fn=1, pz=tLength/2, ry=i);
        }//for
   }//scale
    yCyl2(rb=4.4, rt=4.4, szz=tRad*2, pz=tRad/2, rx=-90);
}//diff

