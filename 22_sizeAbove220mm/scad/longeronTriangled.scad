include <../../../lib/lib.scad>

length=270;

//simple - 1279mm @270mm length
//yPoly(p=[[3,0], [0,4], [-3,0]], szz=length, px=-sin(45)*length/2,py=sin(45)*length/2, rx=90, rz=45);

//1337mm @270mm
yPoly(p=[[4,0], [0.4,2], [0.4,5], [-0.4,5], [-0.4,2],[-4,0]], szz=length, px=-sin(45)*length/2,py=sin(45)*length/2, rx=90, rz=45);
