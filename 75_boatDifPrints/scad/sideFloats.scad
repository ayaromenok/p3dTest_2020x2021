include <../../../lib/lib2.scad>

//print on side and at 45 degree to make all printed lines parallal to motion direction
//sideFloat(rx=90,rz=45,sx=0.25,sy=0.25,sz=0.25);
sideFloat(rx=90,rz=45);

module sideFloat(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1){
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
            for(i=[-30:30:50]){
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
