include <../../../lib/lib.scad>

difference(){
    yCube(80,80);
    yCyl(38,2);
    yCyl(2,2,30,30);
    yCyl(2,2,30,-30);
    yCyl(2,2,-30,30);
    yCyl(2,2,-30,-30);
}
