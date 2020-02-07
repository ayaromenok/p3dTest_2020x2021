include <../../08_scadSimplifyLib/scad/primitives.scad>

sizeX=135;
sizeY=75;
sizeZ=2;

difference(){
    union(){
        yCube(szx=sizeX, szy=sizeY, szz=sizeZ, pz=sizeZ/2);
        
        //front/back
        yCyl(szz=2,rb=4.5, rt=4.5, px=(sizeX/2+3), py=(sizeY/2-4.5), pz=1);
        yCyl(szz=2,rb=4.5, rt=4.5, px=(sizeX/2+3), py=(-sizeY/2+4.5), pz=1);
        yCyl(szz=2,rb=4.5, rt=4.5, px=(-sizeX/2-3), py=(sizeY/2-4.5), pz=1);
        yCyl(szz=2,rb=4.5, rt=4.5, px=(-sizeX/2-3), py=(-sizeY/2+4.5), pz=1);
        //side
        yCyl(szz=2,rb=4.5, rt=4.5, px=(0), py=(sizeY/2+3), pz=1);
        yCyl(szz=2,rb=4.5, rt=4.5, px=(0), py=(-sizeY/2-3), pz=1);
        //support
        yCyl(szz=7,rb=3.5, rt=3.5, px=(sizeX/2-3.5), py=(sizeY/2-3.5), pz=3.5);
        yCyl(szz=7,rb=3.5, rt=3.5, px=(sizeX/2-3.5), py=(0-2), pz=3.5);
        yCyl(szz=7,rb=3.5, rt=3.5, px=(-sizeX/2+3.5), py=(sizeY/2-3.5), pz=3.5);
        yCyl(szz=7,rb=3.5, rt=3.5, px=(-sizeX/2+3.5), py=(-sizeY/2+3.5), pz=3.5);
        //additional support
        yCube(szx=3,szy=2,szz=7, px=(sizeX/2-1.5), py=(-sizeY/2+1.), pz=3.5);
        yCube(szx=3,szy=2,szz=7, px=0, py=(-sizeY/2+1.), pz=3.5);
        yCube(szx=3,szy=2,szz=7, px=0, py=(sizeY/2-1.), pz=3.5);
    }//union
    
    yCube(szx=sizeX-12, szy=sizeY-12, szz=(sizeZ+5), pz=-1);    
    //board holes
    yCyl(szz=20,rb=1, rt=1, px=(sizeX/2-3.5), py=(sizeY/2-3.5));
    yCyl(szz=20,rb=1, rt=1, px=(sizeX/2-3.5), py=(0-2));
    yCyl(szz=20,rb=1, rt=1, px=(-sizeX/2+3.5), py=(sizeY/2-3.5));
    yCyl(szz=20,rb=1, rt=1, px=(-sizeX/2+3.5), py=(-sizeY/2+3.5));
    
    //front/back
        yCyl(szz=4,rb=1.5, rt=1.5, px=(sizeX/2+3), py=(sizeY/2-4.5), pz=1);
        yCyl(szz=4,rb=1.5, rt=1.5, px=(sizeX/2+3), py=(-sizeY/2+4.5), pz=1);
        yCyl(szz=4,rb=1.5, rt=1.5, px=(-sizeX/2-3), py=(sizeY/2-4.5), pz=1);
        yCyl(szz=4,rb=1.5, rt=1.5, px=(-sizeX/2-3), py=(-sizeY/2+4.5), pz=1);
        //side
        yCyl(szz=4,rb=1.5, rt=1.5, px=(0), py=(sizeY/2+3), pz=1);
        yCyl(szz=4,rb=1.5, rt=1.5, px=(0), py=(-sizeY/2-3), pz=1);
}//diff

    
