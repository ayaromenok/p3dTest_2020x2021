include <../../../lib/lib.scad>

//bottom
difference(){
    yCyl(rb=32, rt=32, szz=3);
    yCyl(rb=1.7, rt=1.7, szz=4);
    yCyl(rb=1.7, rt=3.7, szz=2.5, pz=0.7);
}

//side Y+
yArc(r=25.6, a=[60,120],w=6.4, szz=1, pz=39);
yArc(r=30, a=[60,120], w=2, szz=36, pz=1.5, rx=0);

//side Y-
yArc(r=25.6, a=[60,120],w=6.4, szz=1, pz=39, rz=180);
yArc(r=30, a=[60,120], w=2, szz=36, pz=1.5, rz=180);

//support
difference(){
    yCyl(rb=32, rt=32, szz=3, pz=37.5);
    yCyl(rb=30, rt=25, szz=4, pz=37.5);
    yArc(r=25, a=[30,150], w=10, szz=10, pz=35, rz=90);
    yArc(r=25, a=[30,150], w=10, szz=10, pz=35, rz=-90);
}
