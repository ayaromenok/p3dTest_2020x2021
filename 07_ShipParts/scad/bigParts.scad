sizeX = 200;
sizeY = sizeX;
sizeZ = sizeX;

tkSide = 1.3;
tkBot = 1.0;//for 0.3
tkSup = 0.8;

translate([-sizeX/2, -sizeY/2, 0]){
    difference(){
        cube([sizeX, sizeY, sizeZ]);
        translate([tkSide,tkSide,tkBot])
            cube([(sizeX-2*tkSide), (sizeY-2*tkSide), sizeZ]);
    }//diff
    supportL0();
    supportL0(pX=sizeX,rZ=90);
    supportL0(pX=sizeX, pY=sizeY,rZ=180);
    supportL0(pY=sizeY,rZ=270);
}//trans


module supportL0(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0){
    translate([pX,pY,pZ])
    rotate([rX,rY,rZ])
    {
        translate([0,sizeY/2,0])
        rotate([90,0,0])
        linear_extrude(tkSup)
            polygon(points=[[0,0],[sizeX/2,sizeZ],[0,sizeZ]]);        
        supportL1();
        supportL1(pX=sizeX, pY=sizeY*0.5,rZ=90);
        supportL1(pX=sizeX/2, pY=sizeY*1.5,rZ=180);
        supportL1(pX=-sizeX/2, pY=sizeY,rZ=270);
    }
}//module supportL0

module supportL1(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0){
    translate([pX,pY,pZ])
    rotate([rX,rY,rZ])
    {
        translate([sizeX/4,sizeY/2,0])
        rotate([90,0,90])
        linear_extrude(tkSup)
            polygon(points=[[0,sizeZ/2],[sizeX/4,sizeZ],[0,sizeZ]]);
    }
}//module supportL1