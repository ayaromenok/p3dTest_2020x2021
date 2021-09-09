include <../../../lib/lib2.scad>

//print on side and at 45 degree to make all printed lines parallal to motion direction
//sideFloat(rx=90,rz=45,sx=0.25,sy=0.25,sz=0.25);
//sideFloatBig(rx=90,rz=45);
//sideFloatMiddle(rx=90,rz=45); //won't work like this

sideFloatPart(0,-110,rx=90);
//mirror([0,1,0])
//sideFloatPart(0,-110,rx=90);
module sideFloatPart(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){  
        points=[[5,0], [10,0],[5,60],[10,70],[-50,70],[-50,69],[8,69],[4,60],[8,5]];
        points2=[[8,0], [10,0],[5,60],[10,70],[-50,70],[-50,0]];
        difference(){            
            difference(){
                union(){
                    translate([-1,0,90])
                    rotate([0,90,-90])
                    rotate_extrude(angle=30,convexity = 10, $fn = 200)
                    translate([330, 0, 0])
                        polygon(points);        
                   // yPoly(points2, 1,   -00,0,-240,    0,90,180);
                    }//union                
               yCube(350,150,100,  140,0,-154);
            }//difference
        
            
            for(i=[-50:20:-10]){                
                yCyl(0.8, 30,   i,30,20);
                yCyl(0.8, 30,   i,10,20);
                yCyl(0.8, 30,   i,-10,20);
                yCyl(0.8, 30,   i,-30,20);                
                
                yCyl(0.8, 30,   i-10,50,15, 90,0,0);
                yCyl(0.8, 30,   i-10,-50,15, 90,0,0);
            }//for
        }//difference
        
    }//transform
}//module  


module sideFloatMiddle(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){  
        points=[ [4,-30], [10,-37],[-60,-37],[-60,37], [10,37], [5,30],[10,0]];
        difference(){            
            difference(){
                union(){
                    translate([-1,0,90])
                    rotate([0,90,-90])
                    rotate_extrude(angle=70,convexity = 10, $fn = 200)
                    translate([130, 0, 0])
                        polygon(points);        
                    yPoly(points, 70,   -70,0,-36,    0,90,0);
                    }//union
                yCube(250,120,100,  60,0,80);
            }//difference
                
            
            for(i=[-50:20:-10]){                
                yCyl(0.8, 30,   i,30,20);
                yCyl(0.8, 30,   i,10,20);
                yCyl(0.8, 30,   i,-10,20);
                yCyl(0.8, 30,   i,-30,20);                
                
                yCyl(0.8, 30,   i-10,50,15, 90,0,0);
                yCyl(0.8, 30,   i-10,-50,15, 90,0,0);
            }//for
        }//difference
    }//transform
}//module  

module sideFloatBig(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){  
        points=[ [4,-40], [10,-55],[-60,-55],[-60,55], [10,55], [4,40],[10,0]];
        difference(){
            union(){
                difference(){
                    translate([-1,0,110])
                    rotate([0,90,-90])
                    rotate_extrude(angle=50,convexity = 10, $fn = 200)
                    translate([200, 0, 0])
                        polygon(points);        
                    yCube(200,120,100,  75,0,28);
                }//difference
                yPoly(points, 50,   -50,0,-90,    0,90,0);
            }//union
            for(i=[-40:20:50]){
                yCyl(0.8, 30,   i,50,-40);
                yCyl(0.8, 30,   i,30,-40);
                yCyl(0.8, 30,   i,10,-40);
                yCyl(0.8, 30,   i,-10,-40);
                yCyl(0.8, 30,   i,-30,-40);
                yCyl(0.8, 30,   i,-50,-40);
                
                yCyl(0.8, 30,   i,50,-40, 90,0,0);
                yCyl(0.8, 30,   i,-50,-40, 90,0,0);
            }//for
        }//difference
    }//transform
}//module        
