include <../../../lib/lib2.scad>

//speedBoatPeremetricFloat_v0();
speedBoatPeremetricFloat_center_v0();

module speedBoatPeremetricFloat_v0(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        //yCube(30,20,10);
        /*translate([-3,0,0])
        rotate_extrude(angle=40,convexity = 10, $fn = 100)
        translate([8, 0, 0])
            //circle(r = 1, $fn = 3);
            polygon( points=[[0,1.5],[1,0],[0,-1.5]]);
        */
        
        difference(){
        intersection(){
            yCyl(20,30, 40,0,0,  0,90,0, $fn=100, sy=5);
            
            translate([-155,0,0])
            rotate_extrude(angle=40,convexity = 10, $fn = 200)
            translate([200, 0, 0])
                //circle(r = 1.5, $fn = 5);
            polygon( points=[[0,15],[10,0],[0,-15], [2,-20],[-20,-22],[-20,22], [2,20]]);
        }//intersection
        translate([-1.10,0])
        intersection(){
            yCyl(18.9,30, 40,0,0,  0,90,0, $fn=100, sy=5.2);
            
            translate([-155,0,0])
            rotate_extrude(angle=40,convexity = 10, $fn = 200)
            translate([200, 0, 0])                
                polygon( points=[[0,15],[10,0],[0,-15], [2,-20],[-20,-22],[-20,22], [2,20]]);
            }//intersection
        }//difference
        
        //nervure
        //middle
        translate([38,50,0])
        rotate([90,0,0])
        linear_extrude(1)
            polygon( points=[[0,15],[10,0],[0,-15], [0,-17],[-13,-17],[-13,17], [0,17]]);
        //end        
        translate([45,0,0])
        rotate([90,0,0])
        linear_extrude(1)
            polygon( points=[[0,15],[10,0],[0,-15], [2,-20],[-20,-20],[-20,20], [2,20]]);
        
    }//transform
}//module

module speedBoatPeremetricFloat_center_v0(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        
        difference(){
            translate([45,0,0])
            rotate([90,0,0])
            linear_extrude(100)
                polygon( points=[[0,15],[10,0],[0,-15], [2,-20],[-20,-20],[-20,20], [2,20]]);
                
            translate([43.8,-1.2,0])
            rotate([90,0,0])
            linear_extrude(97.6)
                polygon( points=[[0,15],[10,0],[0,-15], [2,-18.9],[-20,-18.9],[-20,18.9], [2,18.9]]);
        }//difference
        //middle                 
        translate([45,-49,0])
        rotate([90,0,0])
        linear_extrude(1)
            polygon( points=[[0,15],[10,0],[0,-15], [2,-20],[-20,-20],[-20,20], [2,20]]);;
    }//transform
}//module
