partM(30);
partF();

//section Dove Tail Joint
module secDTJ(pX=0, pY=0, pZ=0, rX=0, rY=0, rZ=0, sizeDTJ = 2, heightDTJ=3, stepDTJ=0.0, clr="grey"){        
        translate([pX, pY, pZ-stepDTJ])
        rotate([rX, rY, rZ])
        color(clr)
        linear_extrude(heightDTJ+2*stepDTJ)
            polygon(
                points=[
                        [-stepDTJ, (sizeDTJ+stepDTJ)],
                        [(sizeDTJ*2+1+stepDTJ), (sizeDTJ+1+stepDTJ)],
                        [(sizeDTJ*2+1+stepDTJ),-(sizeDTJ+1+stepDTJ)],
                        [-stepDTJ,-(sizeDTJ+stepDTJ)]
                       ]//points
                );//polygon
}//module secDTJ


module partM(pX=0, pY=0, pZ=0){
    translate([pX, pY, pZ]){
        translate([-10,-10,0])
            cube([20,20,3]);
        secDTJ(10, 0, 0, 0, 0, 0);
        secDTJ(0, 10, 0, 0, 0, 90);
        secDTJ(0, -10, 0, 0, 0, 270);
        secDTJ(-10, 0, 0, 0, 0, 180);
    }//transform
}//module

module partF(pX=0, pY=0, pZ=0){
    translate([pX, pY, pZ]){
        difference(){
        translate([-10,-10,0])
            cube([20,20,3]);
        secDTJ(10, 0, 0, 0, 0, 180, stepDTJ=0.3);
        secDTJ(0, 10, 0, 0, 0, 270, stepDTJ=0.3);
        //secDTJ(3.5, 3.5, 0, 0, 0, 45);
        }//diff
        secDTJ(0, -10, 0, 0, 0, 270);
        secDTJ(-10, 0, 0, 0, 0, 180);
    }//transform
}//module