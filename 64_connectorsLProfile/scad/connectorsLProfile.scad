include <../../../lib/lib2.scad>


conn_2x1x1();
//profile_L_10x10x2();
//profile_L_10x10x1();

module conn_2x1x1(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){        
        difference(){
            union(){
                yCube(50,16,16, 21,4,4);
                yCube(16,50,16, 4,21,4);
                yCube(16,16,50,  4,4,21);
            }//union
            profile_L_10x10x1(0,35,0,   0,0,-90);
            profile_L_10x10x1(0,0,35,   0,90,0);
            profile_L_10x10x2(35);
            //holes
            yCyl(1.7,30,    40,5,5);
            yCyl(1.7,30,    30,5,5);
            yCyl(1.7,30,    35,5,5, 90);
            yCyl(1.7,30,    25,5,5, 90);
        
            yCyl(1.7,30,    5,40,5);
            yCyl(1.7,30,    5,30,5);
            yCyl(1.7,30,    5,35,5, 0,90);
            yCyl(1.7,30,    5,25,5, 0,90);
        
            yCyl(1.7,30,    5,5,40, 90);
            yCyl(1.7,30,    5,5,30, 90);
            yCyl(1.7,30,    5,5,35, 90,0,90);
            yCyl(1.7,30,    5,5,25, 90,0,90);
        }//difference
        
        yPoly(p=[[0,0],[34,0],[0,34]], szz=3, px=12,py=12,pz=-4);        
        //yPoly(p=[[0,0],[34,0],[0,34]], szz=3, px=12,py=12,pz=9);
        
        yPoly(p=[[0,0],[34,0],[0,34]], szz=3, px=12,py=-1,pz=12, rx=90);
        yPoly(p=[[0,0],[34,0],[0,34]], szz=3, px=12,py=12,pz=12, rx=90);
        
        yPoly(p=[[0,0],[34,0],[0,34]], szz=3, px=-1,py=12,pz=12, ry=-90);
        yPoly(p=[[0,0],[34,0],[0,34]], szz=3, px=12,py=12,pz=12, ry=-90);
        
        
        //support
        yCube(5,0.8,8, 48.5,1.5,0);
        yCube(5,0.8,8, 48.5,5.5,0);
        
        yCube(0.8,5,8, 1.5,48.5,0);
        yCube(0.8,5,8, 5.5,48.5,0);
    }//transform
}//module


module profile_L_10x10x1(px=0,py=0,pz=0, rx=0,ry=0,rz=0, length=50){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        yCube(length,10.4,1.4, 0,4.5,0);
        yCube(length,1.4,10.4,  0,0,4.5);
    }//transform
}//module


module profile_L_10x10x2(px=0,py=0,pz=0, rx=0,ry=0,rz=0, length=50){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        yCube(length,10.4,2.4, 0,4.0,0);
        yCube(length,2.4,10.4,  0,0,4.0);
    }//transform
}//module
