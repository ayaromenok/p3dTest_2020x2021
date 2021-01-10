include <../../../lib/lib2.scad>

shipHullTest();

module shipHullTest(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        echo ("\t\t\t\t ToDo: make it parametric \t\t\t\t ");
        yMinkTrapezoidSphere(szx=20,szybf=5,szytf=9,szybb=2,szytb=4,   szz=10,     ry=-90, px=39,py=0,pz=0 );
        yMinkTrapezoidCyl(szx=20,szybf=9,szytf=13,szybb=5,szytb=9,   szz=10,     ry=-90, px=30,py=0,pz=0 );
        yMinkTrapezoidCyl(szx=20,szybf=12,szytf=16,szybb=9,szytb=13,   szz=10,     ry=-90, px=20,py=0,pz=0 );
        yMinkTrapezoidCyl(szx=20,szybf=12,szytf=16,szybb=12,szytb=16,   szz=30,     ry=-90, px=0,py=0,pz=0 );
        yMinkTrapezoidCyl(szx=20,szybf=10,szytf=14,szybb=12,szytb=16,   szz=10,     ry=-90, px=-20,py=0,pz=0 ); 
        yMinkTrapezoidCyl(szx=20,szybf=7,szytf=11,szybb=10,szytb=14,    szz=10,     ry=-90, px=-30,py=0,pz=0 );
        yMinkTrapezoidCyl(szx=20,szybf=3,szytf=7,szybb=7,szytb=11,      szz=10,     ry=-90, px=-40,py=0,pz=0 );
        yMinkTrapezoidSphere(szx=20,szybf=2,szytf=3,szybb=3,szytb=7,    szz=10,     ry=-90, px=-49,py=0,pz=0 );
    }//transform
}//module

