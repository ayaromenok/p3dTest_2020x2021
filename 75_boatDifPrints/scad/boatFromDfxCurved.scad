include <../../../lib/lib2.scad>

step=0.1;
step_shp=30;

difference(){
    union(){
        rotate([-90,0,-90]){
            for(i=([0:step:89])){
                translate([0,0,i])
                linear_extrude(step)    
                //scale([cos(i),cos(i),1])
                //    import("../svg/boatDifPrintsCut2_p1_front_arc.svg",center=true);                
                offset(r=-0.19+sin(i)/2)
                scale([cos(i),cos(i),1])
                    import("../svg/profile_curved.svg",center=true); 
                }//for            
        }//rotate
     
        for (i=[0:step_shp:89]){
            translate([i,0,0.5])
            rotate([-90,0,90])
            linear_extrude(0.41)    
            scale([cos(i),cos(i),1])
                import("../svg/profile_curved_closed.svg",center=true); 
        }//for
    }//union
     yCube(100,50,30,   49,0,-15);
 }
 
