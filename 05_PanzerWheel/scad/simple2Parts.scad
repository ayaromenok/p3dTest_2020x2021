difference(){
    cylinder(3,15,5,$fn=60);
    cylinder(4,2,2,$fn=12);
}//dif


difference(){
    cylinder(2,15,15,$fn=60);
    cylinder(4,13,13,$fn=60);
}//dif

translate([40,0,0])
{
    difference(){
        cylinder(3,15,15,$fn=60);
        cylinder(4,2,2,$fn=12);  
        translate([0,0,2])    
            cylinder(4,13,13,$fn=60);
        translate([0,0,0.4])    
            cylinder(1.6,5,13,$fn=60);
    }
    translate([4,0,0])
        cylinder(1,0.6,0.6,$fn=6);    
    translate([2.1,2.9,0])
        cylinder(1,0.6,0.6,$fn=6);
    translate([-2.1,2.9,0])
        cylinder(1,0.6,0.6,$fn=6);
    translate([-4,0,0])
        cylinder(1,0.6,0.6,$fn=6);
    translate([2.1,-2.9,0])
        cylinder(1,0.6,0.6,$fn=6);
    translate([-2.1,-2.9,0])
        cylinder(1,0.6,0.6,$fn=6);
}//transform