include <../../../lib/lib.scad>

difference(){
    //yCube(176,130,2);
    //external
    yCube(194,130,2,px=-9);
    //screen
    yCube(174,128,2,pz=-0.8);
    yCube(159,119,5,px=6);
    //connector
    yCube(20,102,2, px=-90,pz=-0.8);
    yCube(16,126,2, px=-97, py=10, pz=-0.8);
}


