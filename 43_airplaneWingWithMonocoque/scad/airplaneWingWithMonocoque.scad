include <../../../lib/lib.scad>
//main idea - make a section fro front, middle,back section of wing and use it in check order 
//proportion 1/5, 2/5, 2/5

airplaneWingWithMonocoque(height=80);

module airplaneWingWithMonocoque(px=0, py=0, pz=0, rx=0, ry=0, rz=0, length=200, height=20, thickness=10){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        length_2=length/2;
            difference(){
                yCyl(length_2, height,sy=(thickness/100));
                yCyl(4.4,90, px=length/6);
                yCyl(4.4,90, px=-length/6);
            }//diff            
    }//transform
}//module


