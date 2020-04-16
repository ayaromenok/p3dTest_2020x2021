//include <cube.scad>
translate([10,0,0])
import("../stl/cube.stl", convexity=3);
translate([-10,0,0])
import("../stl/cube.stl", convexity=3);


