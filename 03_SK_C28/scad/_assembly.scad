include <sector.scad>
$gFn = $preview ? 1 : 8;
rTwr=71;
hTwr = 40;
hTwrAngle = hTwr-15;
hrTwr = 10;

SK_C28();

module SK_C28(){
    difference(){
        union(){
            translate([-92,-60, hrTwr])
            linear_extrude(hTwr)
                polygon(
                    points=[
                            [0,0],
                            [80,0],
                            [150,10],
                            [150,110],
                            [80,120],
                            [0,120]
                           ]);
            sector(R=rTwr*1.55, hR=hTwr, fN=$gFn, pZ=hrTwr, isEmpty=false, sec=56.9);
        } //union - main part
        
        //front bot
        translate([58,-rTwr, hrTwr])
        rotate([0,-15,0])    
            cube([rTwr, rTwr*2,rTwr]);
        //front top
        translate([51.3,-rTwr, (hTwrAngle+hrTwr)])
        rotate([0,-76.65,0])    
            cube([rTwr, rTwr*2,rTwr]);
        //back top
        translate([-110.05,-rTwr, (hTwrAngle+hrTwr)])
        rotate([0,-20,0])    
            cube([rTwr, rTwr*2,rTwr]);
        //side top
        translate([51.3,-60, (hTwrAngle+hrTwr)])
        rotate([0,-50,90])    
            cube([rTwr, rTwr*3,rTwr]);
        translate([51.3,60, (hTwrAngle+hrTwr)])
        rotate([0,-40,90])    
            cube([rTwr, rTwr*3,rTwr]);

        //side front top
        translate([51.3, 51, (hTwrAngle+hrTwr)])
        rotate([0,-39.7,81.9])    
            cube([rTwr, rTwr,rTwr]);
        translate([51.3, -51, (hTwrAngle+hrTwr)])
        rotate([0,-50.3,98.1])    
            cube([rTwr, rTwr,rTwr]);
    }//diff main part
}//module SK_C28    
        





//towerSupport
cylinder(hrTwr, rTwr, rTwr, $fn=$gFn*rTwr);