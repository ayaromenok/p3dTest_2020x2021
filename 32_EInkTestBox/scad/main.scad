include <../../../lib/lib.scad>

rotate([180,0,0])
difference(){
    //yCube(176,130,2);
    //external
    yCube(197,130,4,px=-10.5);
    //screen
    yCube(176,128,4,,px=-1,pz=-0.8);
    yCube(159,120,5,px=3);
    //connector
    yCube(20,102,4, px=-90,pz=-0.8);
    yCube(16,126,4, px=-100, py=-10, pz=-0.8);
}


