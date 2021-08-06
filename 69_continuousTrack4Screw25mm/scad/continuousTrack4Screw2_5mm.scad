include <../../../lib/lib2.scad>

continuousTrack4Screw2_5mm();
//screw length 12mm, M2.5

module continuousTrack4Screw2_5mm(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yMinkCubeCyl(20,5,40, 1.7, 0,0,0, 90,0,0);
        
            yMinkCubeCyl(10,5.2,10.3, 1.7, 9.6,0,0, 90,0,0);
            yMinkCubeCyl(10,5.2,10.3, 1.7, 9.6,20,0, 90,0,0);
            yMinkCubeCyl(10,5.2,10.3, 1.7, 9.6,-20,0, 90,0,0);
        
            yMinkCubeCyl(10,5.2,10.3, 1.7, -9.6,10,0, 90,0,0);
            yMinkCubeCyl(10,5.2,10.3, 1.7, -9.6,-10,0, 90,0,0);
            //holes
            yCyl(1.7,10,  -7.5,20,0,  90);
            yCyl(1.7,10,  -7.5,-20,0,  90);
            yCyl(3,4,  -7.5,21,0,  90);
            yCyl(3,4,  -7.5,-21,0,  90);
            yCyl(0.8,10,  7.5,10,0,  90);
            yCyl(0.8,10,  7.5,-10,0,  90);
        }//difference
        yCube(8,3,6,   0,10,3);
        yCube(8,3,6,   0,-10,3);
        
    }//transform
}//module

