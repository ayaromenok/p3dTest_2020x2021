include <../../../lib/lib2.scad>
include <../../../lib/lib2/ext/motor.scad>
include <../../../lib/lib2/ext/prop.scad>

contraRotatingProp();

module contraRotatingProp(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        translate([0,20,0])
        rotate([0,90,0])
        linear_extrude(3)
            import("../dxf/gear_20mm.dxf");
        blMotor2212(-20,20,0,   0,90,0);
        
        translate([-5,-20,0])
        rotate([0,90,0])
        linear_extrude(3)
            import("../dxf/gear_20mm.dxf");
        blMotor2212(-20,-20,0,   0,90,0);
        
        translate([0,0,0])
        rotate([0,90,0])
        linear_extrude(3)
            import("../dxf/gear_20mm.dxf");
        translate([-5,0,0])
        rotate([0,90,0])
        linear_extrude(3)
            import("../dxf/gear_20mm.dxf");
        
        
        yCyl(1.5,60,   20,0,0,  0,90,0);
        yTube(3,1.5,3,  5,0,0, 0,90,0);
        yTube(3,1.5,3,  25,0,0, 0,90,0);
        
        yTube(4,3,30,   14.5,0,0,  0,90,0);
        yTube(8,4,4,    6,0,0, 0,90,0);
        yTube(8,4,4,    15,0,0, 0,90,0);
        prop7040_3(25,0,0,   0,90,0);
        rotate([60,0,0])
        prop7040_3(35,0,0,   0,90,0, ccw=true);
    }//transform
}//module

