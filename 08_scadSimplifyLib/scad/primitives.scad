//px - Position X
//rx - Rotation X
//sx - Scale X
//mx - Mirror X


//yCube(szx=5, py=3, rz=30, mx=1, clr="red");
//yCyl(px=7, py=5, rb=3, clr="green");
//szx - SiZe X
module yCube(px=0, py=0, pz=0, rx=0, ry=0, rz=0, sx=1, sy=1, sz=1, mx=0, my=0, mz=0, szx=1, szy=1, szz=1, clr = "grey") {
    mirror([mx,my,mz])
    translate([px, py, pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    color(clr)
        cube([szx, szy, szz], center=true);    
}//yCube

//rb - Radius Bottom, rt - Radius Top
module yCyl(px=0, py=0, pz=0, rx=0, ry=0, rz=0, sx=1, sy=1, sz=1, mx=0, my=0, mz=0, rb=1, rt=1, szz=1, clr = "grey", fn = ($preview ? 2:8) ) {
    mirror([mx,my,mz])
    translate([px, py, (pz-szz/2)])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    color(clr)
        cylinder(szz, rb, rt, $fn=fn*((rb>rt)?rb:rt));    
}//yCube