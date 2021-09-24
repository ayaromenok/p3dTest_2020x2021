include <../../../lib/lib2.scad>

freeCadFloat(rx=-90,rz=-90);

module freeCadFloat(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        import("../stl/Loft_closed_shifted_meshed.stl");
        translate([0,-17.5,0])
        linear_extrude(0.81)
        import("../svg/dualProfile_closed.svg",center=true);
        translate([0,-3.5,109.2])
        linear_extrude(0.81)
            import("../svg/dualProfile_closed_x0_2.svg",center=true);

    }//transform
}//module

