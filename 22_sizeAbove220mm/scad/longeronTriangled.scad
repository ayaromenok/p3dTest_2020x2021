include <../../../lib/lib.scad>
//note 0.35mm step

length=270;

//simple - 1279mm @270mm length
//yPoly(p=[[3,0], [0,4], [-3,0]], szz=length, px=-sin(45)*length/2,py=sin(45)*length/2, rx=90, rz=45);

//V2 - 1337mm @270mm
//yPoly(p=[[4,0], [0.4,2], [0.4,5], [-0.4,5], [-0.4,2],[-4,0]], szz=length, px=-sin(45)*length/2,py=sin(45)*length/2, rx=90, rz=45);

//V3 - 1243mm @270mm
yPoly(p=[[4,0], [4,0.69], [2,0.69], [0.39,2], [0.39,5], [-0.39,5], [-0.39,2], [-2,0.69], [-4,0.69], [-4,0]], szz=length, px=-sin(45)*length/2,py=sin(45)*length/2, rx=90, rz=45);
