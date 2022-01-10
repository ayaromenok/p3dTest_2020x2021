include <../../../lib/lib2.scad>

birdFeedersTop(0,0,70);
birdFeedersBottom();

module birdFeedersTop(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCyl(70,2);
                //yTube(50,47,20, 0,0,9);
                //yTube(70,68,7, 0,0,4);
                //yTube(5,0.8,60, -30,-30,31);
                yTube(5,2.4,10, -50,-50,6, 30,-30);
                yTube(5,2.4,10, -15,-67,6, 50,-30);
                yTube(5,2.4,10, -67,-15,6, 10,-30);
            }//union
            yCube(140,50,50,    0,50,0);
            yCube(50,140,50,    50,00,0);    
        }//difference        
    }//transform
}//module

module birdFeedersBottom(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCyl(70,2);
                yTube(50,47,20, 0,0,9);
                yTube(70,68,7, 0,0,4);
                //yTube(5,0.8,60, -30,-30,31);
            }//union
            yCube(140,50,50,    0,50,0);
            yCube(50,140,50,    50,00,0);    
        }//difference        
    }//transform
}//module

