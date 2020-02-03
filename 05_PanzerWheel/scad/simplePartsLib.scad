include <../../08_scadSimplifyLib/scad/primitives.scad>

//roadWheel(support=8, supBolts=true);
//roadWheel(support=1, supBolts=false);
//roadWheel(px=50);

module roadWheel(px=0, py=0, pz=0, rx=0, ry=0, rz=0, support=0, supBolts=true){
    translate([px,py,pz])
    rotate([rx,ry,rz])
    {
        
        //main part
        difference(){
            yCyl(rb=20, rt=6, szz=3);
            yCyl(rb=1.3, rt=1.3, szz=6, pz=-1);
        }//diff
        //support
        difference(){
            yCyl(rb=6, rt=6, szz=support, pz=support/2+1.5);
            yCyl(rb=1.3, rt=1.3, szz=(support+2), pz=support/2+1.5);
        }//diff
        //tire support
        difference(){
            yCyl(rb=19, rt=17.6, szz=2, pz=-0.5);
            yCyl(rb=16.5, rt=17.6, szz=6, pz=-1);
        }//diff
        
        //tire
        difference(){
            yCyl(rb=20, rt=20, szz=2, pz=-0.5);
            yCyl(rb=18, rt=18, szz=6, pz=-1);
        }//diff

        //internal nuts
        if (supBolts){
            for (i=[0:60:359]){    
                yCyl(rb=0.8, rt=0.8, fn=8, szz=1, px=sin(i)*5, py=cos(i)*5, pz=1.7+support);
            }
        }
        //external nuts
        for (i=[0:20:359]){    
            yCyl(rb=0.6, rt=0.6, fn=10, px=sin(i)*16, py=cos(i)*16, pz=-0.5);
        }
    }//translate
}