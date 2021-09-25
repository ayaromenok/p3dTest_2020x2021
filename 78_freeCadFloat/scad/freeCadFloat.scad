include <../../../lib/lib2.scad>

freeCadFloat(rx=-90,rz=-90);
//freeCadFloat();

module freeCadFloat(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        union(){
        import("../stl/floatTest2_LoftOk2.stl");
        translate([0,-3.5,109.19])
        linear_extrude(0.81)
        import("../svg/dp1_closed_x0_2.svg",center=true);
        
        translate([0,-10.5,89.19])
        linear_extrude(0.81)
        import("../svg/dp1_closed_x0_6.svg",center=true);
        
        translate([0,-17.5,45])
        linear_extrude(0.81)
        import("../svg/dualProfile_closed.svg",center=true);
        
        translate([0,-17.5,0])
        linear_extrude(0.81)
        import("../svg/dualProfile_closed.svg",center=true);
        
        
        translate([0,-17.5,-40])
        linear_extrude(0.81)
        import("../svg/dp1_closed_x1_0_back.svg",center=true);
        }//union
    }//transform
}//module

