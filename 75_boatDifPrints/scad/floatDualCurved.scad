include <../../../lib/lib2.scad>

step=0.2;
step_shp=40;
floatDualCurvedCenter(length=120);
//floatDualCurvedFront();
//floatDualCurvedFront(isBot=false);

module floatDualCurvedFront(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, part=0, isBot=true){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){
        difference(){
        union(){
            rotate([-90,0,-90]){
                for(i=([0:step:89.9])){
                    translate([0,0,i])
                    linear_extrude(step)                    
                    offset(r=0.105+sin(i/4))                    
                    scale([cos(i),(isBot?cos(i):1),1])
                        import("../svg/dualProfile_open.svg",center=true); 
                }//for            
            }//rotate
        //*
            for (i=[0:step_shp:89.91-20]){
                translate([i+0.4,0,-0.6])
                rotate([-90,0,90])
                linear_extrude(0.41)    
                scale([cos(i),(isBot?cos(i)*1.05:1),1])
                    import("../svg/dualProfile_closed.svg",center=true); 
                
                yTube(2.5,0.8,5,  i+2.5,25*cos(i*1.1),-15.6);
                yTube(2.5,0.8,5,  i+2.5,-25*cos(i*1.1),-15.6);
            }//for
            //*/
        }//union       
        yCube(100,100,30,   49,0,(isBot?-15:15));
        if (!isBot)
            yCube(100,100,30,   49,0,-33.1);
        }//difference
        
    }//transform
}//module

module floatDualCurvedCenter(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, part=0, length=100){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){                
        rotate([-90,0,-90])  
        linear_extrude(length)                    
        offset(r=0.105) //1.21mm
            import("../svg/dualProfile_open.svg",center=true);                 
            
        
        for (i=[step_shp:step_shp:length-1]){
            translate([i+0.4,0,-0.6])
            rotate([-90,0,90])
            linear_extrude(0.42)                    
                import("../svg/dualProfile_closed_internal.svg",center=true); 
            yTube(2.5,0.8,5,  i+2.5,25,-15.6);
            yTube(2.5,0.8,5,  i+2.5,-25,-15.6);
        }//for        
        //first
        translate([0.41,0,-0.6])
        rotate([-90,0,90])
        linear_extrude(0.41)                    
            import("../svg/dualProfile_closed.svg",center=true);             
        yTube(2.5,0.8,5,  2.5,25,-15.6);
        yTube(2.5,0.8,5,  2.5,-25,-15.6);

        //last
        translate([length,0,-0.6])
        rotate([-90,0,90])
        linear_extrude(0.41)                    
            import("../svg/dualProfile_closed.svg",center=true);             
        yTube(2.5,0.8,5,  length-2.5,25,-15.6);
        yTube(2.5,0.8,5,  length-2.5,-25,-15.6);

    }//transform
}//module
 
