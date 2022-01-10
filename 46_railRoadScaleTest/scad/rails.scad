include <../../../lib/lib.scad>

// https://en.wikipedia.org/wiki/Rail_transport_modelling
// H0 -1:87 - (5/8)0.625" - 16.5mm
// S - 1:64 - (7/8)0.883" - 22.43"               https://en.wikipedia.org/wiki/S_scale
// O - 1:48 - ~1.25" - 30-33mm              https://en.wikipedia.org/wiki/O_scale
// 1 gauge  1:32 -  1.75" - 44/45mm / 1435mm 
// G - 1:22.5 - 1.75"




yCube(71,20,0.8, 0,-41, -0.4);
translate([3,-32,0])
rotate([0,0,-90])
linear_extrude(0.6)
    text("1:87",4.5);
translate([9,-32,0])
rotate([0,0,-90])
    linear_extrude(0.7)
    text("1:64",4.5);
translate([15,-32,0])
rotate([0,0,-90])
    linear_extrude(0.8)
    text("1:48",4.5);
translate([21.5,-32,0])
rotate([0,0,-90])
    linear_extrude(0.9)
    text("1:32",4.5);
translate([29.5,-32,0])
rotate([0,0,-90])
    linear_extrude(1.0)
    text("1:22.5",4.5);

translate([-3,-44,0])
rotate([0,0,90])
    linear_extrude(0.6)
    text("1:87",4.5);
translate([-9,-44,0])
rotate([0,0,90])
    linear_extrude(0.7)
    text("1:64",4.5);
translate([-15,-44,0])
rotate([0,0,90])
    linear_extrude(0.8)
    text("1:48",4.5);
translate([-21.5,-44,0])
rotate([0,0,90])
    linear_extrude(0.9)
    text("1:32",4.5);
translate([-29.5,-49,0])
rotate([0,0,90])
    linear_extrude(1.0)
    text("1:22.5",4.5);
    
    railEU(16.5/2,90,  scale=87,length=120);
    railEU(-16.5/2,90, scale=87,length=120);
    railEU(22.43/2,90,  scale=64,length=120);
    railEU(-22.43/2,90, scale=64,length=120);
    railEU(31/2,90, scale=48,length=120);
    railEU(-31/2,90, scale=48,length=120);
    railEU(45/2,90, scale=32,length=120);
    railEU(-45/2,90, scale=32,length=120);
    railEU(64/2,90, scale=22.5,length=120);
    railEU(-64/2,90, scale=22.5,length=120);
//railRoadTieWoodEU();

for (i=[-30:15:90]){
    yCube(71,3,0.8, 0,i, -0.4);
}


module railSectionStrait(px=0,py=0,pz=0, rx=0,ry=0,rz=0, scale=64, length=30){
    //size in France w=140,h=153 - aprox 150mm
    sx=15/scale;
    sy=15/scale;
    sz=1;
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    {
        yPoly([[0,0],[5,0],[5,1],[1,2],[1,7],[2.5,8],[2.5,9],[2,10],[-2,10],[-2.5,9],[-2.5,8],[-1,7],[-1,2],[-5,1],[-5,0]],
            length);
    }//transform
}//module


module railRoadTieWoodEU(px=0,py=0,pz=0, rx=0,ry=0,rz=0, scale=64, length=30){
    //size in France w=140,h=153 - aprox 150mm
    sx=200/scale;
    sy=200/scale;
    sz=1;
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    {
        yCube(10,2,2);
    }//transform
}//module


module railEU(px=0,py=0,pz=0, rx=0,ry=0,rz=0, scale=64, length=30){
    //size in France w=140,h=153 - aprox 150mm
    sx=15/scale;
    sy=1;
    sz=15/scale;
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    {
        
        yPoly([[0,0],[5,0],[5,1],[1,2],[1,7],[2.5,8],[2.5,9],[2,10],[-2,10],[-2.5,9],[-2.5,8],[-1,7],[-1,2],[-5,1],[-5,0]],
            length, rx=90);
    }//transform
}//module

