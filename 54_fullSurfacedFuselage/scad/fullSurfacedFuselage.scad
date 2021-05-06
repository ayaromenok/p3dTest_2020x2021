include <../../../lib/lib2.scad>

fullSurfacedFuselage();

module fullSurfacedFuselage(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        _r      =   25;
        _height =   30;
        _hCon   =   4;
        //side
        yTube(_r,_r-0.45,_height);
        yTube(_r-5,_r-5.45,_height);
        
        //top
        yTube(_r-0.7,_r-4.6,_hCon, 0,0, _height/2);
        yTube(_r,_r-5.45,1, 0,0, _height/2);
        
        //bot        
        yTube(_r,_r-5.45,_hCon, 0,0, -_height/2+_hCon);
        //
    }//transform
}//module

