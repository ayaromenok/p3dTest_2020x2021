//mother
linear_extrude(height=2.0)
import ("../dxf/mo_50x20mm.dxf");

/*
translate([50,0,0])
linear_extrude(height=2.0)
import ("../dxf/mo_50x20mm.dxf");
//*
translate([100,0,0])
linear_extrude(height=2.0)
import ("../dxf/mo_50x20mm.dxf");
//*
translate([150,0,0])
linear_extrude(height=2.0)
import ("../dxf/mo_50x20mm.dxf");
//*/

//father

translate([0,30,0])
linear_extrude(height=1.2)
import ("../dxf/fa_50x20mm.dxf");
/*
translate([50,30,0])
linear_extrude(height=1.2)
import ("../dxf/fa_50x20mm.dxf");
//*
translate([100,30,0])
linear_extrude(height=1.2)
import ("../dxf/fa_50x20mm.dxf");
//*
translate([150,30,0])
linear_extrude(height=1.2)
import ("../dxf/fa_50x20mm.dxf");
//*/