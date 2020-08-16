include <../../../lib/lib.scad>
//main idea - make a section fro front, middle,back section of wing and use it in check order 
//proportion 1/5, 2/5, 2/5

//airplaneWingWithMonocoque(height=80, secFront=true);
//airplaneWingWithMonocoque(height=80, secMiddle=true);
airplaneWingWithMonocoque(height=80, secBack=true);

module airplaneWingWithMonocoque(px=0, py=0, pz=0, rx=0, ry=0, rz=0, length=200, height=20, thickness=10, secFront=false, secMiddle=false, secBack=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        length_2=length/2;
            difference(){
                yCyl(length_2, height,sy=(thickness/100));
                if (secFront){
                    yCube(length,2*length*(thickness/100), height*2, px=-length/5);
                    for (i=[0:(height/20-1)]){
                        yCyl(rb=3.5,rt=1,szz=3, px=60, pz=-height/2+-10+i*20, ry=90);                    
                    }
                    scale([0.5,1,1])
                        yCube(length*(thickness/100),length*(thickness/100), height*2, px=110.5, rz=45);
                }//secFront
                
                if (secMiddle){
                    yCube(length,2*length*(thickness/100), height*2, px=length*4/5);
                    yCube(length,2*length*(thickness/100), height*2, px=-length*3/5); 
                    scale([0.5,1,1])
                        yCube(length*(thickness/100),length*(thickness/100), height*2, px=-50, rz=45);        
                    
                    for (i=[0:(height/20-1)]){
                        yCyl(rb=3.1,rt=0.2,szz=3, px=-20, pz=-height/2+10+i*20, ry=90);                    
                    }                    
                }//secMiddle
                if (secBack){
                    yCube(length,2*length*(thickness/100), height*2, px=length*2/5);                    
                }//secBack
            }//diff
            
            if (secMiddle){                
                for (i=[0:(height/20-1)]){
                        yCyl(rb=3.1,rt=0.2,szz=3, px=60, pz=-height/2+10+i*20, ry=90);                    
                    }                    
                difference(){
                    scale([0.5,1,1])
                        yCube(length*(thickness/100),length*(thickness/100), height*2, px=110.5, rz=45);
                    yCube(length*(thickness/100),length*(thickness/100), height*2, px=55.5, py=length*0.85*(thickness/100) );
                    yCube(length*(thickness/100),length*(thickness/100), height*2, px=55.5, py=-length*0.85*(thickness/100) );
                    yCube(length*(thickness/100),length*(thickness/100), height, px=55.5, pz=height );
                    yCube(length*(thickness/100),length*(thickness/100), height, px=55.5, pz=-height );
                }//diff
            }//secMiddle
            if (secBack){
                        for (i=[0:(height/20-1)]){
                        yCyl(rb=3.1,rt=0.2,szz=3, px=-20, pz=-height/2+10+i*20, ry=90);                    
                    }                    
                difference(){
                    scale([0.5,1,1])
                        yCube(length*(thickness/100),length*(thickness/100), height*2, px=-50, rz=45);
                    yCube(length*(thickness/100),length*(thickness/100), height*2, px=-25.5, py=length*0.85*(thickness/100) );
                    yCube(length*(thickness/100),length*(thickness/100), height*2, px=-25.5, py=-length*0.85*(thickness/100) );
                    yCube(length*(thickness/100),length*(thickness/100), height, px=-25.5, pz=height );
                    yCube(length*(thickness/100),length*(thickness/100), height, px=-25.5, pz=-height );
                } 
            }//secBack
            //yCube(length*(thickness/100),length*(thickness/100), height*2, px=-25.5, py=length*0.85*(thickness/100) );
    }//transform
}//module

