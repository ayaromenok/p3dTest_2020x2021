include <../../../lib/lib.scad>

_assembly();
//gears_all();
//gear_8x16();
//gear_0x8(rx=180);
//gear_0x16(rx=180);

//chassis_8x16();
//rotating_handle();

module _assembly(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        gear_0x8(rx=180, px=-12.5,pz=9);
        gear_8x16(pz=4,rz=11.5);        
        gear_8x16(pz=7, px=12.5, rz=17);
        gear_0x16(rx=0, px=25, pz=8, rz=17);
        chassis_8x16();
    }//transform
}//module


module gears_all(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        gear_8x16();
        gear_0x8(rx=180, px=20,pz=6);
        gear_0x16(rx=180, py=20, pz=4);
    }//transform
}//module

module gear_8x16(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                translate([0,0,2])
                linear_extrude(4)
                    import(file="../dxf/gear08.dxf");

                linear_extrude(2)
                    import(file="../dxf/gear16.dxf");
            }//union
            yCyl(1.7,13);
        }//diff
    }//transform
}//module

module gear_0x8(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                translate([0,0,2])
                linear_extrude(4)
                    import(file="../dxf/gear08.dxf");
                yCyl(2.6,2, pz=1);
            }//union
            yCyl(1.7,13);
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
                yCyl(2.6,4, pz=0);
            }//union
            yCyl(1.7,13);
        }//diff
    }//transform
}//module

module chassis_8x16(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){    
                yCube(60,10,2,0);
                yCube(60,2,2,0,4,1.5);
                yCube(60,2,2,0,-4,1.5);
                yCyl(3.0,3,-12.5,0,1.5,sy=1.2);
                yCyl(3.0,3,0,0,2.5,sy=1.2);                
                yCyl(3.0,6, 12.5,0,4,sy=1.2);
                yCyl(3.0,5, 25,0,3.5,sy=1.2);    
            }//union
            yCyl(1.7,15,-12.5,0,5);
            yCyl(1.7,15,0,0,5);            
            yCyl(1.7,15, 12.5,0,5);
            yCyl(1.7,15, 25,0,5);    
        }//dif
    }//transform
}//module                

module rotating_handle(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
                yCube(31,6,2);
                yCyl(1.7,11,-12.3);                
            }//diff
        yCyl(2.7,11,12.3,0,5);    
    }//transform
}//module                
        