include <../../../lib/lib.scad>
//https://al-plastik.prom.ua/p22877122-kontejner-dvojnoj-twin.html
//0.5L
//162x112x64mm
//PLastikBoxSeparator_x6();
PLastikBoxSeparator_x3(rx=180);
//PLastikBoxSeparator_x2(rx=180);


module PLastikBoxSeparator_x2(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //yCube(92/82,62/52,45);
        yPoly(p=[[3.5,40], [5.5,40],[8,45], [85,45], [88,40], [90,40],[89.5,45],[87.5,47],[6,47],[4,45]],szz=10, px=-46.5, py=5,rx=90);
        
        yPoly(p=[[0,0],[60,0],[56,45],[54,47],[6,47],[4,45]],szz=0.78, px=0, py=-30, rx=90,rz=90);        
        
        yPoly(p=[[12,0],[12,2],[0,5],[-12,2],[-12,0]],szz=1.0, px=0,py=24,pz=46.2, rz=180);
        yPoly(p=[[12,0],[12,2],[0,5],[-12,2],[-12,0]],szz=1.0, px=0,py=-24,pz=46.2, rz=0);
        
        
    }//transform
}//module


module PLastikBoxSeparator_x3(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //yCube(92/82,62/52,45);
        yPoly(p=[[3.5,40], [5.5,40],[8,45], [85,45], [88,40], [90,40],[89.5,45],[87.5,47],[6,47],[4,45]],szz=10, px=-46.5, py=5,rx=90);
        yPoly(p=[[0,0],[60,0],[56,45],[54,47],[6,47],[4,45]],szz=0.78, px=15, py=-30, rx=90,rz=90);
        yPoly(p=[[0,0],[60,0],[56,45],[54,47],[6,47],[4,45]],szz=0.78, px=-15, py=-30, rx=90,rz=90);
        
        yPoly(p=[[15,0],[15,3],[-15,3],[-15,0]],szz=1.0, px=0,py=24,pz=46.2, rz=180);
        yPoly(p=[[15,0],[15,3],[-15,3],[-15,0]],szz=1.0, px=0,py=-24,pz=46.2, rz=0);
        //yPoly(p=[[4,0],[0,3],[-4,0]],szz=0.8, px=15,py=24,pz=46.2, rz=180);
        //yPoly(p=[[4,0],[0,3],[-4,0]],szz=0.8, px=15,py=-24,pz=46.2, rz=0);
        //yPoly(p=[[4,0],[0,3],[-4,0]],szz=0.8, px=-15,py=24,pz=46.2, rz=180);
        //yPoly(p=[[4,0],[0,3],[-4,0]],szz=0.8, px=-15,py=-24,pz=46.2, rz=0);
        
    }//transform
}//module


module PLastikBoxSeparator_x6(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //yCube(92/82,62/52,45);
        yPoly(p=[[0,0],[93,0],[89.5,45],[87.5,47],[6,47],[4,45]],szz=0.78, px=-46.5, rx=90);
        yPoly(p=[[0,0],[60,0],[56,45],[54,47],[6,47],[4,45]],szz=0.78, px=20, py=-30, rx=90,rz=90);
        yPoly(p=[[0,0],[60,0],[56,45],[54,47],[6,47],[4,45]],szz=0.78, px=-20, py=-30, rx=90,rz=90);
        
        
        yPoly(p=[[3,0],[0,3],[-3,0]],szz=0.8, px=46.4,py=0,pz=0, rz=90);
        yPoly(p=[[3,0],[0,3],[-3,0]],szz=0.8, px=-46.4,py=0,pz=0, rz=-90);
        
        yPoly(p=[[4,0],[0,3],[-4,0]],szz=0.8, px=20,py=30,pz=0, rz=180);
        yPoly(p=[[4,0],[0,3],[-4,0]],szz=0.8, px=20,py=-30,pz=0, rz=0);
        yPoly(p=[[4,0],[0,3],[-4,0]],szz=0.8, px=-20,py=30,pz=0, rz=180);
        yPoly(p=[[4,0],[0,3],[-4,0]],szz=0.8, px=-20,py=-30,pz=0, rz=0);
        
    }//transform
}//module

