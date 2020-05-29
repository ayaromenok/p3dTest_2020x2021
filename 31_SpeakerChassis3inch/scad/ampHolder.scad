include <../../../lib/lib.scad>

speakerHolder();

module speakerHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(47,55);
            yCube(30,45,3);     
            yCyl(2,2,18.3,22.3);
            yCyl(2,2,18.3,-15.3);
            yCyl(2,2,-18.3,22.3);
            yCyl(2,2,-18.3,-15.3);
        }//dif
    }//translate    
}//module
