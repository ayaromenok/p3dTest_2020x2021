//supportBot();

//supportLeft();
//supportRight();

module supportBot(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, size=150, dia=30, Fn=6)
{
    translate([pX-120/2, pY-size/2, pZ])
    rotate([rX, rY, rZ])    
    {
        translate([0,120,0,])
            cube([5, 80, 5]);
        translate([115,120,0,])
            cube([5, 80, 5]);
        translate([0,15,0,])
            cube([120, 5, 5]);
        translate([0,75,0,])
            cube([120, 5, 5]);
        translate([0,130,0,])
            cube([120, 5, 5]);
        MxHolder(pX=20,pY=23.5);
        MxHolder(pX=100,pY=23.5);
        MxHolder(pX=20,pY=83.5);
        MxHolder(pX=100,pY=71.5);
        MxHolder(pX=20,pY=126.5);
        MxHolder(pX=100,pY=126.5);
        MxHolder(pX=8,pY=195);
        MxHolder(pX=112,pY=195);
        
        difference(){
            translate([0,15,0])
                cube([5,size-30,20]);
            translate([-1,size/2,147])
            rotate([0,90,0])
                cylinder(10,140,140,$fn=100);
            translate([-1,20, 15])
            rotate([0,90,0])
                cylinder(10,1.1,1.1,$fn=12);
            translate([-1,size-20,15])
            rotate([0,90,0])
                cylinder(10,1.1,1.1,$fn=12);
            translate([-1,50, 5])
            rotate([0,90,0])
                cylinder(10,1.1,1.1,$fn=12);
            translate([-1,size-50, 5])
            rotate([0,90,0])
                cylinder(10,1.1,1.1,$fn=12);
        }
        difference(){
            translate([115,15,0])
                cube([5,size-30,20]);
            translate([114,size/2,147])
            rotate([0,90,0])
                cylinder(10,140,140,$fn=100);
            translate([114,20, 15])
            rotate([0,90,0])
                cylinder(10,1.1,1.1,$fn=12);
            translate([114,size-20,15])
            rotate([0,90,0])
                cylinder(10,1.1,1.1,$fn=12);
            translate([114,50, 5])
            rotate([0,90,0])
                cylinder(10,1.1,1.1,$fn=12);
            translate([114,size-50, 5])
            rotate([0,90,0])
                cylinder(10,1.1,1.1,$fn=12);
        }//dif
        
    }//transform
}//axisYHolder

module supportLeft(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, size=150, dia=20, Fn=6)
{
    translate([pX, pY, pZ])
    rotate([rX, rY, rZ+180])    
    {
        supportRight();
        
    }//transform
}//supportLeft


module supportRight(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, size=150, dia=20, Fn=6)
{
    translate([pX+size/2, pY-size/2, pZ])
    rotate([rX, rY, rZ])    
    {   
        difference(){
            cube([3, size, dia]);
            translate([-1,20, 15])
            rotate([0,90,0])
                cylinder(10,1.7,1.7,$fn=12);
            translate([-1,size-20,15])
            rotate([0,90,0])
                cylinder(10,1.7,1.7,$fn=12);
            translate([-1,50, 5])
            rotate([0,90,0])
                cylinder(10,1.7,1.7,$fn=12);
            translate([-1,size-50, 5])
            rotate([0,90,0])
                cylinder(10,1.7,1.7,$fn=12);
            translate([-3,size/2,147])
            rotate([0,90,0])
                cylinder(10,140,140,$fn=100);
        }
        
        
        difference(){
            translate([0,size/2-dia/2,150])
                cube([12,dia,dia]);
            translate([-1,size/2,160])
            rotate([0,90,0])
                cylinder(15, 4.6, 4.6, $fn=20);
            translate([-1,size/2-4.6,160])
                cube([20,9.2,20]);
        }//dif
        
        translate([0,size-5,2])
        rotate([22.6,0,0])
            cube([10,5,170]);
        translate([0,0,2])
        rotate([-23,0,0])
            cube([10,5,170]);
    }//transform
}//supportRIght

module MxHolder(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, Mx=3)
{
    translate([pX, pY, pZ])
    rotate([rX, rY, rZ+180])    
    {
        difference(){
            cylinder(3, Mx*1.5, Mx*1.5, $fn=Mx*8);
            translate([0,0,-1])
                cylinder(5, Mx/2+0.3, Mx/2+0.3, $fn=Mx*6);
            translate([0,0,2])
                cylinder(1.5, Mx/2+0.3, Mx*1.3, $fn=Mx*6);
        }//dif
    }//transform
}//module MxHholder