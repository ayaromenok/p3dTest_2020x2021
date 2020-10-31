include <../../../lib/lib.scad>

holder();
holder(0,-150,0, isSideSupport=false);
//mirror([1,0,0])
//holder();

module holder(px=0, py=0, pz=0, rx=0, ry=0, rz=0, isSideSupport=true){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCyl(10,10);
                yCube(130,10,10,    -70,-5,0);
                yCube(159,10,10,    -66,-44,0, 0,0,30);
                yCube(5,120,12,    -135,-42.5,1);                
                if (isSideSupport){
                    yCube(5,12,50, -135,-5,30);
                }//isSideSupport
                
                //strengthers
                yCube(10,120,1.2,    -130,-42.5,-4.4);
                yCube(10,40,3,    -70,-20,-3.5, 0,0,30);
                if (isSideSupport){
                    yPoly (p=[[50,0],[0,30],[-00,0]],szz=5, px=-135,py=-7.5,pz=0,  rx=-90,ry=-90);
                }//isSideSupport
            }//union
            yCyl(4.4,12);
            yCube(8.2,10,12,    0,5,0);
            
            //M5 holes
            yCyl2(2.7,20,    -2.5,10,-130,  0,90,0);
            yCyl2(2.7,20,    -2.5,-95,-130,  0,90,0);
            if (isSideSupport){
                yCyl2(2.7,20,    -50,-5,-130,  0,90,0);
            }//isSideSupport
        }//diff
        
        
    }//transform
}//module


module spool_200mm(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCyl(100,5, 0,0,-23.5);
                yCyl(54,50, 0,0,0);
                yCyl(100,5, 0,0,23.5);
            }//union
            yCyl(26,60, 0,0,0);
        }//diff
    }//transform
}//module