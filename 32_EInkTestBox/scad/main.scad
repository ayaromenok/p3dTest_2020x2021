include <../../../lib/lib.scad>

difference(){
    //yCube(176,130,2);
    //external
    yCube(197,130,2,px=-10.5);
    //screen
    yCube(174.6,128,2,pz=-0.8);
    yCube(159,120,5,px=4);
    //connector
    yCube(20,102,2, px=-90,pz=-0.8);
    yCube(16,126,2, px=-100, py=-10, pz=-0.8);
}


