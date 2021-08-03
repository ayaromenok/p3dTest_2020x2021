include <../../../lib/lib2.scad>
include <../../../lib/lib2/ext/servo.scad>

sailBoat_assmebly();
//sailBoat_mainMastMount(px=-20,rz=0, isMetal=true);
//sailBoat_geek(0,0,0); //same for front
//sailBoat_leaf(20,0,15);
//sailBoat_6leaf(rx=180); //should be printed upsidedown
//sailBoat_leaf2geek(ry=90); //should be printed vertically with support

module sailBoat_assmebly(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        sailBoat_mainMastMount(px=-20,rz=0, isMetal=true);
        sailBoat_geek(-20,0,34); 
        sailBoat_geek(188,0,34); 
        sailBoat_leaf(0,0,62);
        sailBoat_leaf2geek(-20,0,35);
        sailBoat_leaf(0,0,275);
        sailBoat_6leaf(0,0,515);
        yPoly(p=[[35,40],[175,40],[25,510]], rx=90);
        yPoly(p=[[-30,40],[-170,40],[-25,510]], rx=90);
    }//translate
}//module

module sailBoat_leaf2geek(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yTube(5,1.7,6,  0,0,19);
                yMinkCubeSphere(30,10,10,   4,  -20,0,0);
                //yMinkCubeSphere(10,6,6,   1.5, -8,0,19);
                yMinkCubeSphere(18,6,6,   1.5, -8,0,10, 0,-80,0);
                yMinkCubeSphere(36,6,6,   1.5, -18,0,10, 0,-33,0);
            }//union            
            yMinkCubeSphere(155,6.5,6.5, 2.5, -75,0,00);
            //M2.5
            //yCyl(1.4,10,    10,0,0,  0,90,0);
            yCube(60,10,10,  -20,0,-8);
            yCyl(1.2,20,    -10,0,0, 90,0,0);
            yCyl(1.2,20,    -30,0,0, 90,0,0);
        }//difference        
    }//translate
}//module

module sailBoat_6leaf(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yTube(5,1.7,10,  20,0,0);
                yTube(5,1.7,10,  -20,0,0);
                yMinkCubeSphere(20,20,10,   4,  0,0,0);
                yMinkCubeSphere(35,6,10,   1.5, 0,0,0);
                yTube(4,1.7,4,  10,10,3);
                yTube(4,1.7,4,  -10,10,3);
                yTube(4,1.7,4,  10,-10,3);
                yTube(4,1.7,4,  -10,-10,3);
            }//union
            translate([0,0,-96]){
                yCube(12.5,2.0,100, 0,5.25,50);
                yCube(12.5,2.0,100, 0,-5.25,50);
                yCube(2.0,12.5,100, 5.25,0,50);
            }//translate        
            //M2.5
            yCyl(1.4,10,    0,5,0,  90,0,0);
            yCyl(1.4,10,    0,-5,0,  90,0,0);            
        }//difference
        
    }//translate
}//module

module sailBoat_leaf(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yTube(5,1.7,6,  -20,0,-2);
                yMinkCubeSphere(22,18,10,   4,  1,0,0);
                yMinkCubeSphere(20,6,6,   1.5, -8,0,-2);
            }//union
            translate([0,0,-50]){
                yCube(12.5,2.0,100, 0,5.25,50);
                yCube(12.5,2.0,100, 0,-5.25,50);
                yCube(2.0,12.5,100, 5.25,0,50);
            }//translate        
            //M2.5
            yCyl(1.4,10,    10,0,0,  0,90,0);
            yCube(10,5,10,  -5,0,6);
        }//difference       
    }//translate
}//module

module sailBoat_geek(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCyl(5.5,6, 0,0,0);
                yMinkCubeSphere(155,6,6, 2.5, -75,0,00);
            }//union
            yCyl(2.45,3.2, 0,0,-1.5);
            yCyl(1.4,20, 0,0,5);
            yCyl(2.45,3.2, 0,0,3.5);
            for (i=[-150:20:0]){
                yCyl(0.8,20,    i,0,0, 90,0,0);
           }//for
        }//difference           
    }//translate
}//module

module sailBoat_mainMastMount(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isMetal=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCube(30,70,8,  20,0,0);
                yCube(90,30,8,  10,0,0);                               
                yCube(16,16,50, 20,0,25);
                yCube(34,16,20, -5,0,10);
                //nose
                yMinkCubeSphere(34,18,24, 3, 203,0,8);
                yMinkCubeSphere(190,10,12, 3,  120,0,2);
            }//union
            //20x20 grid
            for (i=[-30:20:30]){
                yCyl(1.8,20,    50,i,2, 0,0,0);
                yCyl(1.8,20,    30,i,2, 0,0,0);
                yCyl(1.8,20,    10,i,2, 0,0,0);
                yCyl(1.8,20,    -10,i,2, 0,0,0);
                yCyl(1.8,20,    -30,i,2, 0,0,0);                                
            }//for\
            //mast
            translate([20,0,20]){
                yCube(12.5,2.0,100, 0,5.25,50);
                yCube(12.5,2.0,100, 0,-5.25,50);
                yCube(2.0,12.5,100, 5.25,0,50);
            }//translate
            //SG90 - grot sail
            yCube(23,13,50, -5,0,0);
            yCube(23,6,50, -4,0,0);     
            yCyl(0.6,50,    9,0,25);
            yCyl(0.6,50,    -19,0,25);
            yCube(5,20,5, 5,-10,-4, 0,45,0);
            yCube(27,13,20, -5,0,0);
            //SG90 - staksel sail
            translate([208,0,0]){
                yCube(23,13,50, -5,0,0);
                yCube(23,6,50, -4,0,0);     
                yCyl(0.6,50,    9,0,25);
                yCyl(0.6,50,    -19,0,25);                
                yCube(27,13,20, -5,0,0);
            }//translate
        }//difference
        yPoly(p=[[50,8],[4,35],[4,8]], szz=2, px=21,ry=-90);
        //yPoly(p=[[50,8],[4,35],[4,8]], szz=2, px=20,py=1,ry=-90, rz=90);
        yPoly(p=[[50,8],[4,35],[4,8]], szz=2, px=19,ry=-90, rz=180);
        yPoly(p=[[50,8],[4,35],[4,8]], szz=2, px=20,py=-1,ry=-90, rz=270);
        
        
            
        if(isMetal){
            servoSg90(-5,0,15, 0,0,180);
            servoSg90(203,0,15, 0,0,180);
            //alu profil U-like 12x12x1.5mm
            //*
            translate([20,0,20]){
                yCube(12,1.5,500, 0,5.25,250);
                yCube(12,1.5,500, 0,-5.25,250);
                yCube(1.5,12,500, 5.25,0,250);
            }//translate
            //*/
        }//isMetal        
    }//transform
}//module

