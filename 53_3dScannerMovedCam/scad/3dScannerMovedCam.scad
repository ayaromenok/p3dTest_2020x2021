include <../../../lib/lib2.scad>

//3dScannerMovedCam();
//3dScannerPrototypeHexFinger();
3dScannerPrototypeBot(0,0,0,    180,0,0);

3dScannerMovedCam(0,0,-5);
module 3dScannerMovedCam(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yTube(67,64,7,      0,0,6.5);
        translate([0,0,10])
        difference(){
            yTube(67,64,7,      0,0,6.5, 0,90,0);
            yCube(10,200,100,   0,0,-50);
        }//difference
    }//transform
}//module

module 3dScannerPrototypeBot(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        translate([0,0,-15])
        difference(){
            yCyl(50,3);
            yCyl(5.4,10,    0,0,0, $fn=6);
            for (i=[0:60:(360)]){
                rotate([0,0,i])
                yCyl(5.4,10,    20,0,0, $fn=6);
            }//for
            for (i=[15:30:(360)]){
                rotate([0,0,i])
                yCyl(5.4,10,    40,0,0, $fn=6);
            }//for
        }//diff

        difference(){
            union(){
                yCyl(50,2,          0,0,9);
                yCyl(7,4,   0,0,8);
            }//union

            yCube(5.6,3.8,10,     0,0,9);
            yCyl(5,5,   0,0,11);
        }


        yTube(5.9,5.4,24,    00,0,-4, $fn=6);        
        yTube(50,49.5,25,          0,0,-3);

        for (i=[0:60:(360)]){
                rotate([0,0,i])
                yTube(5.9,5.4,24,    20,0,-4, $fn=6);
        }//for
        for (i=[15:30:(360)]){
                rotate([0,0,i])
                yTube(5.9,5.4,24,    40,0,-4, $fn=6);
            }//for

        //bottom
        difference(){
            yTube(65,62,7,      0,0,6.5);
            for (i=[30:60:(360)]){
                rotate([0,0,i])
                yCyl(1.7,20,    67.5,0,6.5,  0,90,0);
            }//for
        }
        for (i=[0:60:(360)]){
                rotate([0,0,i])
                yCube(40,2,6,   45,0,7, 0,0,0);
        }//for
    }//transform
}//module



module 3dScannerPrototypeHexFinger(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCyl(4,20,    0,10,0, 90,0,0, $fn=6);
        yCyl(4,2,    0,-20,0, 90,0,0, $fn=6);



        difference(){
            translate([0,-10,0])
            rotate([90,0,0])
            linear_extrude(height = 20, center = true, convexity = 10, twist = -2100, $fn = 20)
            translate([2.7, 0, 0])
            circle(r = 2);
            difference(){
                yCyl(6,40,    0,-10,0, 90,0,0, $fn=6);
                yCyl(4,50,    0,-10,0, 90,0,0, $fn=6);
            }//diff
        }//diff
        yCube(1,30,0.42,0,-5,-3.25);

    }//transform
}//module

