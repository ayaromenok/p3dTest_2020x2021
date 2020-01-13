//include<../scad/config.scad>
if($showL0 == undef){
    mCyl();
}

module mCyl(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, h=10, r1=5, r2=5, clr="grey"){        
        translate([(pX), (pY), (pZ-h/2)])
        rotate([rX, rY, rZ])
        color(clr)
        {
            cylinder(h, r1, r2, $fn=$gFn*r1);
        }//transform
}//module