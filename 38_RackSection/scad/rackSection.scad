include <../../../lib/lib.scad>

rackSection(200);

module rackSection(szx=100,szy=100,px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        szy=szx;
        _szExt = 6.5;
        _szInt = 4;
        _rInt = 1.85;
        difference(){
            union(){
                //yCube(szx,szy,0.35);
                _triPoly(_szExt, szx, py=szy/2-_szExt/2, pz=_szExt*sin(60)/2, rx=90, rz=90);
                _triPoly(_szExt, szx, py=-szy/2+_szExt/2,pz=_szExt*sin(60)/2, rx=90, rz=90);
        
                _triPoly(_szInt, sqrt(szx*szx*2)-_szExt, py=0,pz=1.7, rx=90, rz=45);
                _triPoly(_szInt, sqrt(szx*szx*2)-_szExt, py=0,pz=1.7, rx=90, rz=-45);
        
                _triPoly(_szInt, szy-_szExt, px=szx/2, py=0,pz=1.7, rx=90);
                _triPoly(_szInt, szy-_szExt, px=-szx/2, py=0,pz=1.7, rx=90);
                
                //big parts
                _triPoly(_szExt*2, 5, px=szx/2-2.5,py=szy/2-_szExt/2, pz=_szExt*2*sin(60)/2, rx=90, rz=90);
                _triPoly(_szExt*2, 5, px=-szx/2+2.5,py=szy/2-_szExt/2, pz=_szExt*2*sin(60)/2, rx=90, rz=90);
                _triPoly(_szExt*2, 5, px=szx/2-2.5,py=-szy/2+_szExt/2, pz=_szExt*2*sin(60)/2, rx=90, rz=90);
                _triPoly(_szExt*2, 5, px=-szx/2+2.5,py=-szy/2+_szExt/2, pz=_szExt*2*sin(60)/2, rx=90, rz=90);
            }//union
            //cut sides
            yCube(10,szy,20,(szx/2+5),0,0);
            yCube(10,szy,20,(-szx/2-5),0,0);
            
            //holes
            
            yCyl2(_rInt,szx+2, -_szExt/3,szy/2-_szExt/2,0, 0,90,0);
            yCyl2(_rInt,szx+2, -_szExt/3,-szy/2+_szExt/2,0, 0,90,0);
        }//dif
        
    }//transform
}//module

module _triPoly(size=6, length=120, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        sz2sin=(size/2)*sin(60);
        yPoly(p=[[size/2,-sz2sin],[0,sz2sin*2],[-size/2,-sz2sin]], szz=length, pz=-length/2);
    }//transform
}//module
