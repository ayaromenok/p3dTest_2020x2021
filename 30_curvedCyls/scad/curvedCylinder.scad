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

translate([38.5,59,0])
rotate([0,0,165])
rotate_extrude(angle=80, convexity=10, $fn=100)
   translate([20, 0]) 
    scale([0.5,1])
    circle(3.5, $fn=20);


translate([30,46,-3.5])    
difference(){
    cylinder(7,4,4);
    cylinder(8,2.5,2.5);
}
