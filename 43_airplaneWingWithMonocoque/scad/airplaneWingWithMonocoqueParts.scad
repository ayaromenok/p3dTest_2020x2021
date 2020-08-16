include <../../../lib/lib.scad>

airplaneWingWithMonocoque();

module airplaneWingWithMonocoque(px=0, py=0, pz=0, rx=0, ry=0, rz=0, length=100,height=20,thickness=10){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        length_2=length/2;
        
        difference(){
            yCyl(length_2,height,sy=(thickness/100));
            yCyl(2.3,22, sy=1.95);
            //holes
            yCyl(rb=3,rt=2,szz=3, px=20, pz=-8.5);
            yCyl(rb=3,rt=2,szz=3, px=-20, pz=-8.5);
        }
        yCyl(rb=3-0.4,rt=2-0.4,szz=3-0.4, px=20, pz=11.3);
        yCyl(rb=3-0.4,rt=2-0.4,szz=3-0.4, px=-20, pz=11.3);
        
        
    }//transform
}//module

