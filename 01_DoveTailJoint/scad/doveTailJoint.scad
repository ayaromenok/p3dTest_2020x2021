sizeP = 2;
heightP = 3;

partP();

module partP(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, clr="grey"){        
        translate([pX, pZ, pZ])
        rotate([pX, pY, pZ])
        color(clr)
        linear_extrude(heightP)
            polygon(
                points=[
                        [0,sizeP],
                        [(sizeP*2+1), (sizeP+1)],
                        [(sizeP*2+1),-(sizeP+1)],
                        [0,-sizeP]
                       ]//points
                );//polygon
}

