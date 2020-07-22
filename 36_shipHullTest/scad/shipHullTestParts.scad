include <../../../lib/lib.scad>

// settings
// 0.35mm Z-step
// 60mm speed
// 0.75mm side, 1.01mm bottom
//shipHullPrint();
shipHull();

module shipHullPrint(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
            difference(){
            minkowski(){
                    linear_extrude(100, scale=1.3,$fn=200)
                        import("../dxf/profileHullFront.dxf");
                    sphere(10, $fn=20);
                }//mink
            
            translate([0,0,1])    
            minkowski(){
                    linear_extrude(100, scale=1.3,$fn=200)
                    offset(r=-0.5)
                        import("../dxf/profileHullFront.dxf");
                    sphere(10, $fn=20);
                }//mink 
            }//diff`   
    }//transform
}//module

module shipHull(px=0, py=0, pz=0, rx=0, ry=0, rz=0, sx=1, sy=1, sz=1){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    {
        hull(){
            translate([-200,0,0])
                minkowski(){
                    linear_extrude(100, scale=1.5,$fn=200)
                        import("../dxf/profileHullFront.dxf");
                    sphere(10, $fn=20);
                }//mink

            translate([200,0,0])
            rotate([0,0,0])
                minkowski(){
                    linear_extrude(100, scale=1.5,$fn=200)
                        import("../dxf/profileHullBack.dxf");
                    sphere(10, $fn=20);
                }//mink
        }//hull
    }//transform
}//module
