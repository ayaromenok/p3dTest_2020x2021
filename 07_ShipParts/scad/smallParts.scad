translate([-30,0,0]){
    difference(){
        scale([1.6,1,1]){
            difference(){
                cylinder(20,15,15,$fn=60);
                translate([0,0,1.1])
                    cylinder(20,13.7,13.7,$fn=60);
                translate([-20,0,5])
                rotate([0,90,0])
                    cylinder(32,2,2,$fn=16);
            }//diff
            
        }//scale
            translate([0,-15,-1])
                cube([50,30,22]);
        
    }//diff
    
    difference(){
        translate([0,-15,0])
            cube([1.2,30,20]);
        translate([-10,0,5])
        rotate([0,90,0])
            cylinder(32,2,2,$fn=16);
        translate([1.2,10,10])        
            sphere(2, $fn=20);
        translate([1.2,-10,10])        
            sphere(2, $fn=20);
    }
    //support
    translate([-23,-0.5,0])
        cube([23,1,3]);

    difference(){
        translate([-23.6,0,5])
        rotate([0,90,0])
            cylinder(24.8,3,3,$fn=16);
        translate([-25,0,5])
        rotate([0,90,0])
            cylinder(30,1.9,1.9,$fn=16);
    }//diff
    
    translate([-1.6,10,10])
        rotate([0,90,0])
            cylinder(1.6,3,3,$fn=16);
    translate([-1.6,-10,10])
        rotate([0,90,0])
            cylinder(1.6,3,3,$fn=16);
    
        
}//translate

translate([-15,-15,0]){
    difference(){
        cube([30,30,20]);
        translate([1.3,1.3,1.1])
            cube([27.6,27.6,20]);
        translate([-1,15,5])
        rotate([0,90,0])
            cylinder(32,2,2,$fn=16);
    }//diff
    //support
    translate([0,14.5,0])
        cube([30,1,3]);

    difference(){
        translate([0,15,5])
        rotate([0,90,0])
            cylinder(30,3,3,$fn=16);
        translate([-1,15,5])
        rotate([0,90,0])
            cylinder(32,1.9,1.9,$fn=16);
    }//diff
    translate([0.3,25,10])        
        sphere(1.5, $fn=20);
    translate([0.3,5,10])        
        sphere(1.5, $fn=20);
}//translate