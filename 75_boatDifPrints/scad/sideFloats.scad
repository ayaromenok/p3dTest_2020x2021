include <../../../lib/lib2.scad>

//print on side and at 45 degree to make all printed lines parallal to motion direction
//sideFloat(rx=90,rz=45,sx=0.25,sy=0.25,sz=0.25);
//sideFloatBig(rx=90,rz=45);
//sideFloatMiddle(rx=90,rz=45); //won't work like this

//use 100% fill
//sideFloatPartOuter(0,-200,rx=90);
//mirror([0,1,0])
//sideFloatPartOuter(0,-200,rx=90);

//yTube(30,29.3,100,  0,0,50);
//yCyl(30,1.1);

//sideFloatPartInner(0,235,rx=-90);
//mirror([0,1,0])
//sideFloatPartInner(0,235,rx=-90);
//sideFloatPartInner();
module sideFloatPartInner (px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, tk=1.15, w=50,h=40){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){  
        //points=[[6,0], [10,0],[5,60],[10,70],[-50,70],[-50,70-tk],[10-tk-0.1,70-tk],[5-tk,60],[10-tk,3]];
        //points2=[[8,0], [10,0],[5,60],[10,70],[-50,70],[-50,0]];
        points=[[0,0],[0,tk],[h-tk,tk],[h*.9-tk,w/2], [h*.6-tk,w*3/4], [h*.4-tk,w*7/8], [0,w-tk], [0,w], [tk,w], 
                     [h*.4,w*7/8],[h*.6,w*3/4],[h*.9,w/2],  [h,0]];
        points2=[[0,0], [0,w], [tk,w], 
                     [h*.4,w*7/8],[h*.6,w*3/4],[h*.9,w/2],  [h,0]];
        difference(){            
            difference(){
                union(){
                    translate([-1,0,90])
                    rotate([0,90,-90])
                    rotate_extrude(angle=30,convexity = 10, $fn = 200)
                    translate([330, 0, 0])
                        polygon(points);        
                    yPoly(points2, tk,   0,0,-240,    0,90,180);
                    yPoly(points2, 0.8,   20,0,-238,    0,90,180);
                    yPoly(points2, 0.8,   40,0,-237,    0,90,180);
                    yPoly(points2, 0.8,   60,0,-234,    0,90,180);
                    yPoly(points2, 0.8,   80,0,-230.2,    0,90,180);
                    yPoly(points2, 0.8,   100,0,-225.1,    0,90,180);
                    yPoly(points2, 0.8,   124,0,-217.4,    0,90,180);
               }//union                
              yCube(350,150,100,  140,0,-190);
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

module sideFloatPartOuter(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, tk=1.15){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz]){  
        points=[[6,0], [10,0],[5,60],[10,70],[-50,70],[-50,70-tk],[10-tk-0.1,70-tk],[5-tk,60],[10-tk,3]];
        points2=[[8,0], [10,0],[5,60],[10,70],[-50,70],[-50,0]];
        difference(){            
            difference(){
                union(){
                    translate([-1,0,90])
                    rotate([0,90,-90])
                    rotate_extrude(angle=30,convexity = 10, $fn = 200)
                    translate([330, 0, 0])
                        polygon(points);        
                    yPoly(points2, tk,   0,0,-240,    0,90,180);
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
