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
            yCube(100,100,200);
            yCube(98.5,98.5,200,0,0,1.01);
        }
        yCube(100,1,1,0,49.28,0,45);
        yCube(100,1,1,0,-49.28,0,45);
        
        yCube(1,100,1,49.28,0,0,0,45);
        yCube(1,100,1,-49.28,0,0,0,45);
        
        yCube(100,1,1,0,49.28,99,45);
        yCube(100,1,1,0,-49.28,99,45);
        
        yCube(1,100,1,49.28,0,99,0,45);
        yCube(1,100,1,-49.28,0,99,0,45);
    }//transform
}//module

