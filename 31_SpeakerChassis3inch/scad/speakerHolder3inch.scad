include <../../../lib/lib.scad>

speakerHolder();

module speakerHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(80,80);
            yCyl(38,2);
            yCyl(2,2,30,30);
            yCyl(2,2,30,-30);
            yCyl(2,2,-30,30);
            yCyl(2,2,-30,-30);
        }//dif
    }//translate    
}//module
