//include<../scad/config.scad>
if($showL0 == undef){
    mCube();
}

module mCube(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, sizeX=10, sizeY=10, sizeZ=10, clr="grey"){        
        translate([(pX-sizeX/2), (pY-sizeY/2), (pZ-sizeZ/2)])
        rotate([rX, rY, rZ])
        color(clr)
        {
            cube([sizeX, sizeY, sizeZ]);
        }//transform
}//module