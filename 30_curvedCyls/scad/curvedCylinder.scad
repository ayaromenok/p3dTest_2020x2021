difference(){
rotate_extrude(angle=75, convexity=10, $fn=100)
   translate([70, 0]) circle(3.5, $fn=20);
   
rotate_extrude(angle=76, convexity=10, $fn=50)
   translate([70, 0]) circle(2.5, $fn=20);   
}

translate([70,0,0])
    rotate([90,0,0])
difference(){
    cylinder(5,3.5,2.5);
    cylinder(5.1,2.5,2.3);
}