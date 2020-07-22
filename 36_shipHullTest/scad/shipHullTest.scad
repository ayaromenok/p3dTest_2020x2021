include <../../../lib/lib.scad>

// settings
// 0.35mm Z-step
// 60mm speed
// 0.75mm side, 1.01mm bottom

main();

module main(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(100,50,100);
            yCube(98.5,48.5,100,0,0,1.01);
        }
    }//transform
}//module

