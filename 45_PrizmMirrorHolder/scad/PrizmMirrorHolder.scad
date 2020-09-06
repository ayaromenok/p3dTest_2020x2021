include <../../../lib/lib.scad>

PrizmMirrorHolder();

module PrizmMirrorHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0, stereoBase=64, camOffset=30){
    _st = stereoBase;
    _st_2 = _st/2;
    _co = camOffset;
    translate([(px), (py), pz])    
    rotate([rx,ry,rz]){
        //yCube(28,18,1     0,0,0,  0,0,0);         //smaller mirror
        //yCube(30,24,1,    0,30,0, 0,0,0);         //bigger mirror
        difference(){
            yCube(18,18,30,     0,0,0,   0,0,45);
            yCube(18,36,32,     -9,0,0,   0,0,0);
        }//diff
        difference(){
            yCube(24,24,30,     18*sin(45)+3,_st_2,0,   0,0,45);
            yCube(26,26,32,     21*sin(45)+3,_st_2+3,0,   0,0,45);
        } //diff   
        difference(){
            yCube(24,24,30,     18*sin(45)+3,-_st_2,0,   0,0,45);
            yCube(26,26,32,     21*sin(45)+3,-_st_2-3,0,   0,0,45);
        } //diff   
        
        //camera
        translate([_co,0,0])
            difference(){
                yCube(3,25,30,      0,0,0);
                //cam holder holes
                yCyl2(2,10,         3.5,10.5,0,     0,90,0);
                yCyl2(2,10,         3.5,-10.5,0,     0,90,0);
                yCyl2(2,10,         -8.5,10.5,0,     0,90,0);
                yCyl2(2,10,         -8.5,-10.5,0,     0,90,0);
                //cam objective hole
                yCube(10,12,20,      0,0,3.5);
        }//diff
        
        yPoly(p=[[-1,_st_2+3],[_co+1.5,12],[_co+1.5,-12],[-1,-_st_2-3]],szz=3, pz=-15-3);
        
    }//transform
    
}//module

