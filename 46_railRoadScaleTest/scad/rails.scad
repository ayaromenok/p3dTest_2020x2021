include <../../../lib/lib.scad>

rotate([90,0,0]){
    railRoadScaleTest(10, scale=72);
    railRoadScaleTest(20, scale=50);
    railRoadScaleTest(30, scale=43);
    railRoadScaleTest(40, scale=32);
}
yCube(50,3,0.8, 25,0, -0.4);
yCube(50,3,0.8, 25,-10, -0.4);
yCube(50,3,0.8, 25,-20, -0.4);
yCube(50,3,0.8, 25,-30, -0.4);

module railRoadTie(px=0,py=0,pz=0, rx=0,ry=0,rz=0, scale=72, length=30){
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


module railRoadScaleTest(px=0,py=0,pz=0, rx=0,ry=0,rz=0, scale=72, length=30){
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

