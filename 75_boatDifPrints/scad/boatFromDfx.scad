include <../../../lib/lib2.scad>

translate([30,0,0])
rotate([-90,0,90]){
linear_extrude(60)
import("../svg/boatDifPrintsCut2_p1_front_arc.svg",center=true);

translate([0,0,0])
linear_extrude(1.21)
import("../svg/boatDifPrintsCut2_p1_front_arc_profile.svg", center=true);
translate([0,0,30])
linear_extrude(0.41)
import("../svg/boatDifPrintsCut2_p1_front_arc_profile.svg", center=true);
translate([0,0,60])
linear_extrude(1.21)
import("../svg/boatDifPrintsCut2_p1_front_arc_profile.svg", center=true);
}//rotate