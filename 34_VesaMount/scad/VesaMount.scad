include <../../../lib/lib.scad>

vesaMount();
//M4, 100x100mm
module vesaMount(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(110,110,12);
    
            yCyl(2.4,12,50,50);
            yCyl(7.5,7.5,50,50,-4); 
    
            yCyl(2.4,12,50,-50);
            yCyl(7.5,7.5,50,-50,-4); 
    
            yCyl(2.4,12,-50,50);
            yCyl(7.5,7.5,-50,50,-4); 
    
            yCyl(2.4,12,-50,-50);
            yCyl(7.5,7.5,-50,-50,-4); 
        }//diff
    }//trabsform
}//module vesaMount