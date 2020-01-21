difference(){
    cylinder(66,9.5,9.5,$fn=24);
    translate([0,0,-1])
        cylinder(72,4.4,4.4,$fn=36);
    translate([-7,-10, 23])
        cube([14,20,20]);
    translate([-10,-26, -1])
        cube([20,20,72]);
    translate([-10,6, -1])
        cube([20,20,72]);
    
}


