$showMods = false;
include<config.scad>
include<../libScad/mPartXXX.scad>
//include<../libScad/mCyl.scad>

mCube(clr = "red");
mCyl(pX=20);
mPartXXX(pY=30);