include <../../../lib/lib.scad>
//https://al-plastik.prom.ua/p22877122-kontejner-dvojnoj-twin.html
//0.5L
//162x112x64mm

PLastikBoxSeparator();

module PLastikBoxSeparator(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //yCube(92/82,62/52,45);
        yPoly(p=[[0,0],[92,0],[87,45],[5,45]],szz=0.78, px=-46, rx=90);
        yPoly(p=[[0,0],[62,0],[57,45],[5,45]],szz=0.78, py=-31, rx=90,rz=90);
        
        yCyl(5,0.7, 50,0,0.35);
        yCyl(5,0.7, -50,0,0.35);
        yCyl(5,0.7, 0,35,0.35);
        yCyl(5,0.7, 0,-35,0.35);
    }//transform
}//module

