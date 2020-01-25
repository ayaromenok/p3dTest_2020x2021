sizeX = 200;
sizeY = sizeX;
sizeZ = sizeX;

tkSide = 1.1;
tkBot = tkSide;

translate([-sizeX/2, -sizeY/2, 0]){
    difference(){
        cube([sizeX, sizeY, sizeZ]);
        translate([tkSide,tkSide,tkBot])
            cube([(sizeX-2*tkSide), (sizeY-2*tkSide), sizeZ]);
    }//diff
}//trans
