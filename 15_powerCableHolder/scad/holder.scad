include <../../../lib/lib.scad>

//bottom
difference(){
    yCyl(rb=33, rt=33, szz=3);
    yCyl(rb=1.7, rt=1.7, szz=4);
    yCyl(rb=1.7, rt=3.7, szz=2.5, pz=0.7);
    yCube(szx=30,szy=66,szz=5, px=29);
    yCube(szx=30,szy=66,szz=5, px=-29);
}

//side Y+
yArc(r=23.6, a=[65,115],w=9.4, szz=1, pz=38);
yArc(r=31, a=[65,115], w=2, szz=36, pz=1.5, rx=0);

//side Y-
yArc(r=23.6, a=[65,115],w=9.4, szz=1, pz=38, rz=180);
yArc(r=31, a=[65,115], w=2, szz=36, pz=1.5, rz=180);

//support
difference(){
    yCyl(rb=33, rt=33, szz=5, pz=35.5);
    yCyl(rb=32.7, rt=22.6, szz=6, pz=35.6);
    yArc(r=22.6, a=[25,155], w=12, szz=10, pz=32, rz=90);
    yArc(r=22.6, a=[25,155], w=12, szz=10, pz=32, rz=-90);
}
