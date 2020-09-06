include <../../../lib/lib.scad>

boxWithBottom(px=25);
boxWithTop(rx=180);
module boxWithBottom(px=0, py=0, pz=0, rx=0, ry=0, rz=0, sht=0.25){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(20,20,20);
            //internal
            yCube(16,16,16);
            
            yCube(21,21,10,0,0,10);
            yPoly(p=[[5+sht,0],[4,1+sht],[-4,1+sht],[-5-sht,0],[-4,-1-sht],[4,-1-sht]],szz=10, py=9,pz=-5);
            yPoly(p=[[5+sht,0],[4,1+sht],[-4,1+sht],[-5-sht,0],[-4,-1-sht],[4,-1-sht]],szz=10, py=-9,pz=-5);
            //fixes
            ySphere(1.25+sht,4,9,0);
            ySphere(1.25+sht,-4,9,0);
            ySphere(1.25+sht,4,-9,0);
            ySphere(1.25+sht,-4,-9,0);
        } //diff
        
        
           
    }//transform
}//module

module boxWithTop(px=0, py=0, pz=0, rx=0, ry=0, rz=0, sht=0.25){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        union(){
            difference(){            
                yCube(20,20,20);
                //internal
                yCube(16,16,16);            
                //
                yCube(21,21,15,0,0,-2.5);                
                
            } //diff
            yPoly(p=[[5-sht,0],[4-sht,1],[-4+sht,1],[-5+sht,0],[-4+sht,-1],[4-sht,-1]],szz=10, py=9,pz=-5);
            yPoly(p=[[5-sht,0],[4-sht,1],[-4+sht,1],[-5+sht,0],[-4+sht,-1],[4-sht,-1]],szz=10, py=-9,pz=-5);
            //fixes
            ySphere(1.25-sht,4,9,0);
            ySphere(1.25-sht,-4,9,0);
            ySphere(1.25-sht,4,-9,0);
            ySphere(1.25-sht,-4,-9,0);
        }//union
           
    }//transform
}//module

