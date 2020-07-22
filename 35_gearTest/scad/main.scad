include <../../../lib/lib.scad>

_assembly();
//gears_all();
//gear_8x16();
//gear_0x8();
//gear_0x16();

//chassis_8x16();

module _assembly(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        gear_0x8(rx=0, px=-12.3,pz=4);
        gear_8x16(pz=6,rz=11.5);        
        gear_8x16(pz=4, px=12.3, rz=11.5);
        gear_0x16(rx=0, px=24.6, pz=4, rz=10);
        chassis_8x16();
    }//transform
}//module


module gears_all(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        gear_8x16();
        gear_0x8(rx=180, px=20,pz=4);
        gear_0x16(rx=180, py=20, pz=4);
    }//transform
}//module

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

module gear_0x8(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                translate([0,0,2])
                linear_extrude(2)
                    import(file="../dxf/gear08.dxf");
                yCyl(2.6,2, pz=1);
            }//union
            yCyl(1.7,9);
        }//diff
    }//transform
}//module

module gear_0x16(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                translate([0,0,2])
                linear_extrude(2)
                    import(file="../dxf/gear16.dxf");
                yCyl(2.6,2, pz=1);
            }//union
            yCyl(1.7,9);
        }//diff
    }//transform
}//module

module chassis_8x16(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){    
                yCube(60,10,2,0);
                yCyl(2.7,4,-12.3,0,2);
                yCyl(2.7,5,0,0,3.5);                
                yCyl(2.7,4, 12.3,0,2);
                yCyl(2.7,4, 24.6,0,2);    
            }//union
            yCyl(1.7,11,-12.3);
            yCyl(1.7,15);            
            yCyl(1.7,11, 12.3);
            yCyl(1.7,11, 24.6);    
        }//dif
    }//transform
}//module                