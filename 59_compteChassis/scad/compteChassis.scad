include <../../../lib/lib2.scad>

//alim tube 8x1mm - 5.5gramm per 100mm
//copterChassisLegBox10();          //3.5 gramm per 100mm/D10
//copterChassisLegCyl(100,5);       //3.1 gramm per 100mm/D10
//copterChassisLegCyl(100,4);   `   //2.5 gramm per 100mm/D8
//copterChassisLegCyl(250,4,  0,0,0,  0,0,45);
//copterChassisLegCyl();

module copterChassisLegBox10(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        _l = 100;
        _w = 10;
        _h =10;
        yCube(_l, _w, _h, 0,0,0);
    }//transform
}//module


module copterChassisLegCyl(length=100, radius=4, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        _l = length;
        _r = radius;        
        yCube(10, _r*2, _r*2, _l/2-_r,0,0);
        yCube(10, _r*2, _r*2, -_l/2+_r,0,0);
        yCyl(_r,_l-_r*4,    0,0,0,  0,90,0);
    }//transform
}//module