include<../scad/config.scad>
include<../libScad/mCube.scad>
include<../libScad/mCyl.scad>

if ($showL1 == undef){
    mPartXXX();
}

module mPartXXX(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, clr="lightgrey"){        
        translate([(pX), (pY), (pZ)])
        rotate([rX, rY, rZ])
        color(clr)
        {
            mCube(0, 0, 0, 0, 0, 0, 30, 20, 5);
            mCyl(18);
            mCyl(-18);
        }//transform
}//module