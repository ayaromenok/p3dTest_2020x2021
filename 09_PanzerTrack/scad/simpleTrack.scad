include <../../08_scadSimplifyLib/scad/primitives.scad>

difference(){
    minkowski(){
        yCube(szx=50, szy=20, szz=1);
        translate([-25,-10, -0.5])
            sphere(r=1, $fn=($preview? 8:24));
    }//mink

    yCube(szx=11, szy=7, szz=5, px=-15, py=0.5, pz=-1);
    yCube(szx=11, szy=7, szz=5, px=-35.5, py=0.5, pz=-1);

    yCube(szx=11, szy=7, szz=5, px=-4.5, py=-21, pz=-1);
    yCube(szx=11, szy=7, szz=5, px=-25.5, py=-21, pz=-1);
    yCube(szx=11, szy=7, szz=5, px=-46, py=-21, pz=-1);
    //holes
    yCyl(szz=20, rb=0.9, rt=0.9, ,px=-10, py=-0.5, pz=9.5, ry=90,fn=($preview? 9:18));
    yCyl(szz=20, rb=0.9, rt=0.9, ,px=-60, py=-0.5, pz=9.5, ry=90,fn=($preview? 9:18));
    yCyl(szz=20, rb=0.9, rt=0.9, ,px=-25, py=-19.5, pz=9.5, ry=90,fn=($preview? 9:18));
    yCyl(szz=20, rb=0.9, rt=0.9, ,px=-45, py=-19.5, pz=9.5, ry=90,fn=($preview? 9:18));
    //central smaller hole
    yCyl(szz=20, rb=0.7, rt=0.7, ,px=-35, py=-0.5, pz=9.5, ry=90,fn=($preview? 9:18));

}
translate([-24.5,-5,5]){
    minkowski(){
        yCube(szx=1, szy=8, szz=5);
        translate([-0.5,-4, -2.5])
            sphere(r=1, $fn=($preview? 8:24));
    }//mnk
}