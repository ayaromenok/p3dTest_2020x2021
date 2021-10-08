include <../../../lib/lib2.scad>

HipsSizeTest();

module HipsSizeTest(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        union(){
            //main
            yCube(0.79,150,150);
            yCube(50,0.79,150,  25,75,0);
            yCube(50,0.79,150,  25,-75,0);
            //strength
            //vertical
            //yCube(5,5,150,  2.5,72.5,0);
            yCyl(5,150,  5,70,0);
            yPoly(p=[[0,0],[7,0],[0,7]], szz=150, px=0,py=-75, pz=-75);
            yCyl(7.5,150,   50,75,0);
            yCyl(5,150,   50,-75,0);
            yCube(5,0.79,150, 2.5,25);
            yPoly(p=[[0,-5],[6,0],[0,5]], szz=150, px=0,py=-25, pz=-75);
            //horizontal
            yCube(7,150,7,  3.5,0,-72.5);
            yPoly(p=[[0,0],[7,0],[0,7]], szz=150, px=0,py=-75, pz=75,rx=-90);
        }//union
        
    }//transform
}//module

