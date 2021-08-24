include <../../../lib/lib2.scad>

continuousTrack4Screw2_5mm(-25);
continuousTrack4Screw2_5mm();
continuousTrack4Screw2_5mm(25);
//screw length 12mm, M2.5

module continuousTrack4Screw2_5mm(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yMinkCubeCyl(20,5,40, 2.4, 0,0,0, 90,0,0);
        
            yMinkCubeCyl(10,5.2,11.5, 2.4, 9,0,0, 90,0,0);
            yMinkCubeCyl(10,5.2,11.5, 2.4, 9,20,0, 90,0,0);
            yMinkCubeCyl(10,5.2,11.5, 2.4, 9,-20,0, 90,0,0);
        
            yMinkCubeCyl(10,5.2,11.5, 2.4, -9,10,0, 90,0,0);
            yMinkCubeCyl(10,5.2,11.5, 2.4, -9,-10,0, 90,0,0);
            //holes
            yCyl(1.7,10,  -7.5,20,0,  90);
            yCyl(1.7,10,  -7.5,-20,0,  90);
            yCyl(3,4,  -7.5,21,0,  90);
            yCyl(3,4,  -7.5,-21,0,  90);
            yCyl(1.1,10,  7.5,10,0,  90);
            yCyl(1.1,10,  7.5,-10,0,  90);
            yCube(7,16,5,   0,0,0.4);
            yCube(7,10,5,   0,17,0.4);
            yCube(7,10,5,   0,-17,0.4);
        }//difference
        yCube(5,2,6,   0,10,3);
        yCube(5,2,6,   0,-10,3);
        
        
    }//transform
}//module

