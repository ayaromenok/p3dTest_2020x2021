//axis();
module axis(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, size=150, dia=30, Fn=6)
{
    translate([pX, pY+size/2, pZ])
    rotate([rX+90, rY, rZ])    
    {
        cylinder(size, dia/2, dia/2, $fn=Fn);
    }//transform
}//axisYHolder