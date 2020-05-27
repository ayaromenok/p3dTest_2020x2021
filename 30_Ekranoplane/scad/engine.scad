include <../../../lib/lib.scad>

//gearBox716();
gearBox716Holder();
module gearBox716(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //engine
        yCyl(r=5, szz=10);
        yCyl(r=4.5, szz=11.5, pz=-10);
        //gears
        yCyl(r=1.5, szz=5, pz=7.5);
        yCyl(r=7.5, szz=3, px=9, pz=7.5);
        yCyl(r=2, szz=20, px=9, pz=2);
        //prop
        yCube(szx=140, szy=15, px=9, pz=11.5);
        yCyl(r=4, szz=4, px=9, pz=11.5);
        
    }//translate
}//module

module gearBox716Holder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCyl(r=7, szz=25, pz=-6);
            yCube(szx=17, szy=7, szz=26, py=-6.0, pz=-6);
            yCyl(r=5.4, szz=10.8);
            yCyl(r=4.9, szz=12.3, pz=-10.4);
            yCyl(r=3.0, szz=5, pz=7.5);
            yCyl(r=3.2, szz=5, pz=-17.5);    
        }
        
        
}//translate
}//module
