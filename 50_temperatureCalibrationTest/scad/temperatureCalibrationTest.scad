include <../../../lib/lib2.scad>

temperatureCalibrationTestL0();
temperatureCalibrationTestLX();
temperatureCalibrationTestLX(0,0,10.25);
temperatureCalibrationTestLX(0,0,20.50);
temperatureCalibrationTestLX(0,0,30.75);
temperatureCalibrationTestLX(0,0,41);

module temperatureCalibrationTestL0(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCube(5,20,0.71,    22.5,0,0.3505);
        yCube(5,20,0.71,    -22.5,0,0.3505);
        
        yMinkTrapezoidCyl(1, 2,3,2,3,50, 0.35,   0,10,0.5,  0,90,0);
        yMinkTrapezoidCyl(1, 2,3,2,3,50, 0.35,   0,-10,0.5,  0,90,0);                
    }//transform
}//module

module temperatureCalibrationTestLX(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCube(2,20,0.71,    20,0,10.3505);
        yCube(2,20,0.71,    -20,0,10.3505);
        
        yCyl(1,10,  20,10,5,  $fn=6, sx=2);
        yCyl(1,10,  -20,10,5,  $fn=6, sx=2);
        yCyl(1,10,  20,-10,5,  $fn=6, sx=2);
        yCyl(1,10,  -20,-10,5,  $fn=6, sx=2);
        
        rotate([180,0,0])
        yMinkTrapezoidCyl(1, 2,3,2,3,50, 0.35,   0,10,-10.25,  0,90,0);
        rotate([180,0,0])
        yMinkTrapezoidCyl(1, 2,3,2,3,50, 0.35,   0,-10,-10.35,  0,90,0);
    }//transform
}//module