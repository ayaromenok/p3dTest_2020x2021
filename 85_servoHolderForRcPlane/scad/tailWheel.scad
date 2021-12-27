include <../../../../p3d/lib/lib2.scad>

tailWheel();

module tailWheel(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        yTube(6,1.7,8,     0,0,4);
        difference(){
            yTube(6,3.5,7,     0,0,-3.5);
            yCyl(2,5,   3,-4,-2, 90,0,45, sy=2);
        }//difference
        yTube(30,29.2,7,   0,0,-3.5 );
        yTube(30,25,1.2,    0,0,-6.4 );
        for(i = [0:60:360]){
            rotate([0,0,i])
            tailWheelPart(0,17.3,-3.5, length=15, height=7);
        }
    }//transform
}//module  

module tailWheelPart(px=0,py=0,pz=0, rx=0,ry=0,rz=0, length=25, height=5){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        translate([length/4,-length/2.45,0])
        difference(){
            yTube(length/2, length/2-0.8, height);
            yCube(length,length,height+1, length/4,0,0);
        }
        translate([-length/4,length/2.5,0])
        difference(){
            yTube(length/2, length/2-0.8, height);
            yCube(length,length,height+1, -length/4,0,0);
        }
    }//transform
}//module  
        