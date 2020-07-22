include <../../../lib/lib.scad>

// settings
// 0.35mm Z-step
// 60mm speed
// 0.75mm side, 1.01mm bottom
shipHullFrontPrint(px=0);
shipHullBackPrint(px=50);
shipHullCenterPrint(rx=90,rz=90);

shipHullFrontTopPrint(pz=50);
shipHullBackTopPrint(px=50,pz=50);

module shipHullFrontTopPrint(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){    
                linear_extrude(10, scale=0.6, $fn=200)
                scale([0.6,0.6,0.6])  
                    import("../dxf/profileHullFront_v2.dxf");
            
                translate([0,0,-1])                
                linear_extrude(1 ,$fn=200)
                offset(r=-0.9)
                scale([0.6,0.6,0.6])  
                    import("../dxf/profileHullFront_v2.dxf");
                }//union
            translate([-2,0,-3])
            linear_extrude(10, scale=0.6, $fn=200)
            scale([0.6,0.6,0.6])  
                import("../dxf/profileHullFront_v2.dxf");
        }//diff
    }//transform
}//module


module shipHullBackTopPrint(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){    
                linear_extrude(10, scale=0.6, $fn=200)
                scale([0.6,0.6,0.6])  
                    import("../dxf/profileHullBack_v2.dxf");
            
                translate([0,0,-1])                
                linear_extrude(1 ,$fn=200)
                offset(r=-0.9)
                scale([0.6,0.6,0.6])  
                    import("../dxf/profileHullBack_v2.dxf");
                }//union
            translate([2,0,-3])
            linear_extrude(10, scale=0.6, $fn=200)
            scale([0.6,0.6,0.6])  
                import("../dxf/profileHullBack_v2.dxf");
        }//diff
    }//transform
}//module
module shipHullFrontPrint(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            linear_extrude(50, scale=1.2,$fn=200)
            scale([0.5,0.5,0.5])  
                import("../dxf/profileHullFront_v2.dxf");
            
            translate([0,0,1])                
            linear_extrude(50, scale=1.2,$fn=200)
            offset(r=-0.5)
            scale([0.5,0.5,0.5])  
                import("../dxf/profileHullFront_v2.dxf");
                    
        }//diff`   
    }//transform
}//module

module shipHullBackPrint(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            linear_extrude(50, scale=1.2,$fn=200)
            scale([0.5,0.5,0.5])  
                import("../dxf/profileHullBack_v2.dxf");
            
            translate([0,0,1])                
            linear_extrude(50, scale=1.2,$fn=200)
            offset(r=-0.5)
            scale([0.5,0.5,0.5])  
                import("../dxf/profileHullBack_v2.dxf");
                    
        }//diff`   
    }//transform
}//module


module shipHullCenterPrint(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            linear_extrude(50, scale=1,$fn=200)
            scale([0.5,0.5,0.5])  
                import("../dxf/profileHullCenter_v2.dxf");
            
            translate([0.0,1,0.5])                
            linear_extrude(49, scale=1,$fn=200)
            offset(r=-0.5)
            scale([0.5,0.5,0.45])  
                import("../dxf/profileHullCenter_v2.dxf");
                    
        }//diff`   
    }//transform
}//module
