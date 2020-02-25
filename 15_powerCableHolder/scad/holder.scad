include <../../../lib/lib.scad>

difference(){
    yCyl(rb=31, rt=31, szz=3);
    yCyl(rb=1.7, rt=1.7, szz=4);
    yCyl(rb=1.7, rt=3.7, szz=2.5, pz=0.7);
}

yArc(r=28, a=[60,120],w=3, szz=0.7, pz=21.5);
yArc(r=29, a=[60,120], w=2, szz=20, pz=1.5, rx=0);

yArc(r=28, a=[60,120],w=3, szz=0.7, pz=21.5, rz=180);
yArc(r=29, a=[60,120], w=2, szz=20, pz=1.5, rz=180);