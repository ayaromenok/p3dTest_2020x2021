include <../../../lib/lib2.scad>
include <../../../lib/lib2/ext/motor.scad>
include <../../../lib/lib2/ext/prop.scad>


//engineMount();
pushPullEngineMount();
//pushPullEngineMount(isMetal=true);

module pushPullEngineMount(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        
        //yCube(30,20,10);
        difference(){
            union(){
                yCyl(12,84, 0,0,120,    0,90,0, sx=1.5);
                yMinkCubeCyl(20,20,110, 9.5,  0,0,55, sx=4.2);
                
                //front
                engineMount(42,0,120,   45,0,0);
                engineMount(42,0,120,   -45,0,0);
                engineMount(42,0,120,   135,0,0);
                engineMount(42,0,120,   -135,0,0);
                
                engineMount(-42,0,120,   45,0,180);
                engineMount(-42,0,120,   -45,0,180);
                engineMount(-42,0,120,   135,0,180);
                engineMount(-42,0,120,   -135,0,180);
            }//union
            yMinkCubeCyl(14,14,115, 6.5,  0,0,55, sx=5.8);
            yCyl(10,120, 0,0,120,    0,90,0, sx=1.5);            
            yMinkCubeCyl(22,52,40, 5,  0,0,20,  90);    
        }//difference
        
        //to chassis
        difference(){
            union(){
                yMinkCubeCyl(109,20,6, 4,   0,0,0 );
                yMinkCubeCyl(9,69,6, 4,   50,0,0 );
                yMinkCubeCyl(9,69,6, 4,   -50,0,0 );                
                yMinkCubeCyl(29,69,6, 4,   0,0,0 );
            }//union
            //to chassis
            for (i=[-50:20:50]){
                yCyl(1.7,10,    i,30,0);
                yCyl(1.7,10,    i,10,0);
                yCyl(1.7,10,    i,-10,0);
                yCyl(1.7,10,    i,-30,0);
            }//for            
        }//difference
        
        
        if(isMetal){
            //front motor        
            blMotor2212(57,0,120,    0,90,0);
            prop8040_3(77,0,120,    0,90,0);        
            //back motor        
            blMotor2212(-57,0,120,    0,-90,0);
            prop8040_3(-77,0,120,    0,90,0);
        }//isMetal            
    }//transform
}//module

module engineMount(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        translate([0,0,9.2])
        difference(){
            yMinkCubeSphere(7.5,7.5,20,  3.7, sx=3);
            yCube(30,20,20, 0,0,-10);
            yCube(20,20,20, 10,0,9.5);
            yCyl(0.8,10,    0,0,7.3,  0,90,0);
        }//difference        
    }//transform
}//module
