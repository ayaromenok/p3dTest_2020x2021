linear_extrude(height=2.0)
import ("../dxf/bottom_v2.dxf");

translate([0,40,0])
linear_extrude(height=1.2)
import ("../dxf/side_v2.dxf");
