include <../../../lib/lib.scad>
//https://al-plastik.prom.ua/p22877122-kontejner-dvojnoj-twin.html
//0.5L
//162x112x64mm

PLastikBoxSeparator();

module PLastikBoxSeparator(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //yCube(92/82,62/52,45);
        yPoly(p=[[0,0],[94,0],[90,45],[88,47],[6,47],[4,45]],szz=0.78, px=-47, rx=90);
        yPoly(p=[[0,0],[60,0],[56,45],[54,47],[6,47],[4,45]],szz=0.78, px=20, py=-30, rx=90,rz=90);
        yPoly(p=[[0,0],[60,0],[56,45],[54,47],[6,47],[4,45]],szz=0.78, px=-20, py=-30, rx=90,rz=90);
        
        yCyl(3,0.7, 48,0,0.35);
        yCyl(3,0.7, -48,0,0.35);
        yCyl(3,0.7, -20,32,0.35);
        yCyl(3,0.7, -20,-32,0.35);
        yCyl(3,0.7, 20,32,0.35);
        yCyl(3,0.7, 20,-32,0.35);
    }//transform
}//module

