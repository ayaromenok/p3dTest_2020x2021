include <../../../lib/lib.scad>

tAngle=72;
rSize = 75;
height=150;
for (i=[0:tAngle:360]){
    difference(){
        yCyl(rb=5, rt=4, szz=height, px=rSize*sin(i), py=rSize*cos(i));
        yCyl(r=3, szz=20, pz=-height/2+7.5, px=rSize*sin(i), py=rSize*cos(i));
    }
    yCyl(rb=4, rt=1, szz=15, pz=height/2+7.5, px=rSize*sin(i), py=rSize*cos(i));
}

difference(){
    yCyl(r=rSize+7,szz=15,pz=-height/2+7.5);
    yCyl(r=rSize+3,szz=16,pz=-height/2+7.5);
}