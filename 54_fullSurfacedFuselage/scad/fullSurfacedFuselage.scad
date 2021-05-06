include <../../../lib/lib2.scad>

fullSurfacedFuselage();

module fullSurfacedFuselage(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        _r      =   25;
        _rDiff  =   5;
        _rSurf  =   0.45;
        _height =   30;
        _hCon   =   2;
        //side
        yTube(_r,_r-_rSurf,_height);
        yTube(_r-_rDiff,_r-_rDiff-_rSurf,_height);
        
        
        //top        
        yTube(_r,_r-_rDiff-_rSurf,0.75, 0,0, _height/2);
        yTube(_r-_rSurf-0.3,_r-_rDiff+0.3,_hCon, 0,0, _height/2+_hCon/2);
        //bot        
        yTube(_r,_r-_rDiff-_rSurf,0.75, 0,0, -_height/2+_hCon);
        yTube(_r-_rDiff,_r-_rDiff-_rSurf*3,_hCon*2, 0,0,-_height/2+_hCon);
        //horisontal nervure
        yTube(_r,_r-_rDiff-_rSurf,0.75, 0,0, 0);
        
        //adgesion
        yTube(_r+4,_r,0.45, 0,0, -_height/2+0.225);
        
        //vertical
        for (i=[0:60:360]){
            rotate([0,0,i])
            yCube(_rDiff-0.4, 0.75, _height, _r-_rDiff/2,0,0,   0,0,0);
        }//for
    }//transform
}//module

