include <../../../lib/lib.scad>

mdl();
            
module mdl(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([px, py, pz])
    rotate([rx,ry,rz]){
        yCube(szx=37, szy=37, szz=39, pz=19.5);
        yCube(szx=35, szy=37, szz=26, pz=39+13);
        yCube(szx=32, szy=32, szz=18, pz=39+26+9);
        yPoly(p=[[0,35], [68,35], [85,14], [85,-14], [68,-35], [0,-35]], szz=26, px=10);
        yCube(szx=19, szy=14, szz=7, px=-37/2+19/2, py=37/2+7, pz=3.5);
    }//transform
}//module