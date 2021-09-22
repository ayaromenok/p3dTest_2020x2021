include <../../../lib/lib2.scad>

difference(){
translate([60,0,0])
rotate([-90,0,90]){
linear_extrude(120)
import("../svg/boatDifPrintsCut2_p1_front_arc.svg",center=true);

translate([0,0,0])
    linear_extrude(1.21)
        import("../svg/boatDifPrintsCut2_p1_front_arc_profile.svg", center=true);
    translate([0,0,30])
    linear_extrude(0.41)
        import("../svg/boatDifPrintsCut2_p1_front_arc_profile.svg", center=true);
    translate([0,0,70])
    linear_extrude(0.41)
        import("../svg/boatDifPrintsCut2_p1_front_arc_profile.svg", center=true);    

    translate([0,0,120])
    linear_extrude(1.21)
        import("../svg/boatDifPrintsCut2_p1_front_arc_profile.svg", center=true);
}//rotate

yCube(140,50,30,    0,0,-15);
}//difference