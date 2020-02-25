include <../../../lib/lib.scad>

difference(){
    yCyl(rb=31, rt=31, szz=3);
    yCyl(rb=1.7, rt=1.7, szz=4);
    yCyl(rb=1.7, rt=3.7, szz=2.5, pz=0.7);
}

yArc(r=26, a=[60,120],w=5, szz=2.7, pz=31.5);
yArc(r=27.5, a=[60,120],w=3, szz=2.7, pz=29.5);
yArc(r=29, a=[60,120], w=2, szz=30, pz=1.5, rx=0);

yArc(r=26, a=[60,120],w=5, szz=2.7, pz=31.5, rz=180);
yArc(r=27.5, a=[60,120],w=3, szz=2.7, pz=29.5, rz=180);
yArc(r=29, a=[60,120], w=2, szz=30, pz=1.5, rz=180);