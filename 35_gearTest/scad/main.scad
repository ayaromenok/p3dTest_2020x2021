include <../../../lib/lib.scad>

gear_8x16();

module gear_8x16(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                translate([0,0,2])
                linear_extrude(2)
                    import(file="../dxf/gear08.dxf");

                linear_extrude(2)
                    import(file="../dxf/gear16.dxf");
            }//union
            yCyl(1.7,9);
        }//diff
    }//transform
}//module