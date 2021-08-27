include <../../../lib/lib2.scad>



steamLoco(scale=48);

steamLoco(0,-50,0,scale=87);
/*
mainWheel(0,0,1.15);
mainWheel(20,0,1.57, scale=64);
mainWheel(45,0,2.1, scale=48);

mainWheel(45,25,1.15);
mainWheel(25,25,1.57, scale=64);
mainWheel(0,25,2.1, scale=48);
*/

//mainWheel(0,30,3.13, scale=32);
//mainWheel(0,30,4.45, scale=22.5);

module steamLoco(px=0,py=0,pz=0, rx=0,ry=0,rz=0, scale=87){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        mainWheel(0,-12,2.1,  90,0,0, scale=scale);
        mainWheel(0,12,2.1,  -90,0,0, scale=scale);
        mainWheel(-1330/scale,-12,2.1,  90,0,0, scale=scale);
        mainWheel(-1330/scale,12,2.1,  -90,0,0, scale=scale);
        mainWheel(-(1330+1280)/scale,-12,2.1,  90,0,0, scale=scale);
        mainWheel(-(1330+1280)/scale,12,2.1,  -90,0,0, scale=scale);
        mainWheel(-(1330+1280+1280)/scale,-12,2.1,  90,0,0, scale=scale);
        mainWheel(-(1330+1280+1280)/scale,12,2.1,  -90,0,0, scale=scale);
    }//transform
}//module

module mainWheel(px=0,py=0,pz=0, rx=0,ry=0,rz=0, scale=87){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yTube((1220/2/scale)+0.8,(1220/2/scale),0.6,    0,0,-200/2/scale+0.3);
                yTube((1220/2/scale),(1070/2/scale),200/scale);                
                for (i=[0:30:360]){            
                    yCube((1070/scale), ((20/scale)>0.40?0.81:0.41),(160/scale), 0,0,-20/scale,  0,0,i);
                }//for
                yCyl((1070/5/scale),(200/scale));
                yCyl((1070/12/scale),(200/scale), 1070/3/scale);
            }//union
            //yTube((1070/2/scale),(1070/6/scale), (200/scale),    0,0,0.8);
            yCyl((1070/8/scale),220/scale);            
            yCyl(0.5,(210/scale), 1070/3/scale);
        }//difference
       
       difference(){ 
            yCyl((1070/2/scale),(180/scale),    0,0,-10/scale);
            yCyl((1070/1.5/scale),(220/scale),   1070/3/scale); 
       }//difference
       
    }//transform
}//module

