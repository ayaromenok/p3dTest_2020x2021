include <../../08_scadSimplifyLib/scad/primitives.scad>

difference(){
    minkowski(){
        yCube(szx=40, szy=15, szz=1);
        translate([-20,-7.5, -0.5])
            sphere(r=1, $fn=($preview? 8:24));
    }//mink

    yCube(szx=9, szy=7, szz=5, px=-11.5, py=0.5, pz=-1);
    yCube(szx=9, szy=7, szz=5, px=-28.5, py=0.5, pz=-1);

    yCube(szx=9, szy=7, szz=5, px=-2.5, py=-16, pz=-1);
    yCube(szx=9, szy=7, szz=5, px=-20, py=-16, pz=-1);
    yCube(szx=9, szy=7, szz=5, px=-37, py=-16, pz=-1);
    //holes
    
    yCyl(szz=12, rb=1, rt=1, ,px=-17, py=-14.5, pz=5.5, ry=90,fn=($preview? 9:18));
    yCyl(szz=12, rb=1, rt=1, ,px=-35, py=-14.5, pz=5.5, ry=90,fn=($preview? 9:18));

    yCyl(szz=12, rb=1, rt=1, ,px=-10, py=-0.5, pz=5.5, ry=90,fn=($preview? 9:18));
    yCyl(szz=12, rb=1, rt=1, ,px=-42, py=-0.5, pz=5.5, ry=90,fn=($preview? 9:18));
    //central smaller hole
    yCyl(szz=12, rb=0.8, rt=0.8, ,px=-25, py=-0.5, pz=5.5, ry=90,fn=($preview? 9:18));
}
    
    
translate([-19.0,-4.5, 4]){
    minkowski(){
        yCube(szx=1, szy=6, szz=4);
        translate([-0.5,-3, -2.5])
            sphere(r=1, $fn=($preview? 8:24));
    }//mnk
}