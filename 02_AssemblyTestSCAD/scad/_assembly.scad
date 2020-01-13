// Level0 to LN+1 - from lowerst to hight
$showL0 = false;
$showL1 = false;
include<config.scad>
include<../libScad/mPartXXX.scad>

mCube(clr = "red");
mCyl(pX = 20);
mPartXXX(pY = 30);
mPartXXX(pY = -30, rY=90);
