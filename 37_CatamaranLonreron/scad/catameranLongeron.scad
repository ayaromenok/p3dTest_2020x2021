include <../../../lib/lib.scad>

catamaranLongeron();

module catamaranLongeron(length=100, px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            yPoly(p=[[30,-20],[30,-10],[5,30],[-5,30],[-30,-10],[-30,-20]], szz=length);
            //yPoly(p=[[20,-17],[25,-7],[6,23],[-6,23],[-25,-7],[-20,-17]], szz=12, pz=-1);
            //yPoly(p=[[18,-15],[23,-11],[2,22],[-2,22],[-23,-11],[-18,-15]], szz=12, pz=-1);
            yPoly(p=[[18,-14],[23,-11],[2,22],[2,-14]], szz=(length+2), pz=-1);
            yPoly(p=[[18,-14],[23,-11],[2,22],[2,-14]], szz=(length+2), pz=-1, mx=1);    
            yCyl(1.8,(length+2), 26,-16,length/2);
            yCyl(1.8,(length+2), -26,-16,length/2);
            yCyl(1.8,(length+2), 0,26,length/2);
        }//diff
        
    }//transform
}//module

