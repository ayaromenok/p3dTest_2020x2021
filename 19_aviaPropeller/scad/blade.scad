include <../../../lib/lib.scad>

propBlade2(rz=60);

module propBlade(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px-5/2), (py+1/2),pz])
    rotate([rx,ry,rz]){
        for (i=[-10:0.3:190]){
            translate([0, 0, i])
            rotate([0,0,i/8])
            scale([1-i*0.005, 1.5*sin(i)+2,1])
                cylinder(r=6);
        }//for
        yCyl(rb=20,rt=20,pz=-12);
    }//transform
}//module


module propBlade2(length=180, width=10, layer=0.35,px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    _steps=length/layer;
    translate([(px-5/2), (py+1/2),pz])
    rotate([rx,ry,rz]){
        for (i=[0:_steps]){
            translate([0, 0, layer*i])
            rotate([0,0,i/8])
            //scale([1-i*0.005, 1.5*sin(i)+2,1])
            scale([1+sin(i*layer), cos(i*layer*0.4),1])
            yCyl(width,layer, sx=1, sy=0.5, sz=1);
        }//for
        yCyl(width*1.5);
    }//transform
}//module