include <../../../lib/lib.scad>

rpiLength   = 85;
rpiWidth    = 49;
rpiHeight   = 20;
rpiRadius   = 3;
wallTk      = 2;    //box wall ThiKness
fTk         = 0.4;  //Filament ThiKness

//yCube(szx=rpiLength, szy=rpiWidth, szz=4, px=rpiLength/2, py=rpiWidth/2, pz=1);

difference(){
    translate([0,0,-wallTk]){
        minkowski(){
            yCube(szx=(rpiLength-rpiRadius*2+fTk*2), szy=(rpiWidth-rpiRadius*2+fTk*2), szz=rpiHeight/2);
            yCyl(rb=(rpiRadius+wallTk), rt=(rpiRadius+wallTk), px=rpiLength/2, py=rpiWidth/2, szz=rpiHeight/2);
        }//mink
    }//translate

    minkowski(){
        yCube(szx=(rpiLength-rpiRadius*2+fTk*2), szy=(rpiWidth-rpiRadius*2+fTk*2), szz=rpiHeight/2);
        yCyl(rb=rpiRadius, rt=rpiRadius, px=rpiLength/2, py=rpiWidth/2, szz=rpiHeight/2);
    }//mink
}//diff