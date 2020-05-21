

mo40x20(0);
fa40x20(0);
//mother
module mo40x20(sections=1){
    for (i=[0:1:sections]){
        translate([i*40,0,0])
        linear_extrude(height=2.0)
        import ("../dxf/mo_40x20mm.dxf");
    }//for i
}//module    


//father
module fa40x20(sections=1){
    for (i=[0:1:sections]){
        translate([i*40,30,0])
        linear_extrude(height=1.2)
        import ("../dxf/fa_40x20mm.dxf");
    }//for i
}//module    

//translate([0,-30,0])
//linear_extrude(height=1.2)
//import ("../dxf/center_20x20mm.dxf");

