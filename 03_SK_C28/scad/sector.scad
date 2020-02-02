//sector(isEmpty=false);

module sector(R=20, tkR=1, hR=10, pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, fN=1, isEmpty=true, sec=40){
    translate([pX, pY, pZ])
    rotate([rX, rY, rZ])
    difference(){
        cylinder(hR, R, R, $fn=fN*R);
        if (isEmpty){
            translate([0,0,tkR])
                cylinder((hR-2*tkR), (R-tkR), (R-tkR), $fn=fN*(R-1));
        }//isEmpty

        translate([0,0,-1])
        rotate([0,0,sec])
            cube([R,R,R]);

        translate([0,0,-1])
        rotate([0,0,-(90+sec)])
            cube([R,R,R]);

        translate([0,-R,-1])
            cube([R,R*2,R]);    
    }//diff
}//module sector