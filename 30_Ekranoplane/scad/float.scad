include <../../../lib/lib.scad>

rotate([0,90,0])
translate([-200,0,0])
difference(){
translate([0,0,0])
   rotate_extrude(angle=30, convexity=10, $fn=200)
       translate([200, 0]) polygon([[0,-20],[10,-20],[20,0],[10,20],[0,20]]);

yCube(60,200,100, 170, 70);
}

yPoly([[0,0],[10,-20],[17,-20],[17,20],[10,20]], 60, 0,0,-17, 0,-90,90);

difference(){
    yPoly([[0,0],[10,-20],[17,-20],[17,20],[10,20]], 60, 0,-60,-14, 0,-85,90);
    yCube(60,100,20, 0, -100, 10);
}