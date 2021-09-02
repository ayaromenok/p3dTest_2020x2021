include <../../../lib/lib2.scad>

include <scad-utils/transformations.scad>
include <scad-utils/lists.scad>
include <scad-utils/shapes.scad>
include <list-comprehension-demos/skin.scad>


fncSweepAndSkin();

module fncSweepAndSkin(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        skin(morph(
            profile1=transform(translation([0,0,0]), profile1([2,.2])),            
            /*profile2=transform(translation([0,0,3]),  rectangle_profile([2,.2])),*/
            profile2=transform(translation([0,0,3]),  circle(r=1, $fn=20)),
            slices=40)
        );
    }//transform
}//module


function profile1(size=[1,1]) = [	
	// The first point is the anchor point, put it on the point corresponding to [cos(0),sin(0)]
	[ size[0]/2,  0], 
	[ size[0]/2,  size[1]/2],
	[-size[0]/2,  size[1]/2],
	[-size[0]/2, -size[1]/2],        
    [0, -size[1]*2],  
	[ size[0]/2, -size[1]/2],
];

function rectangle_profile(size=[1,1]) = [	
	// The first point is the anchor point, put it on the point corresponding to [cos(0),sin(0)]
	[ size[0]/2,  0], 
	[ size[0]/2,  size[1]/2],
	[-size[0]/2,  size[1]/2],
	[-size[0]/2, -size[1]/2],    
    [0, -size[1]/1],    
	[ size[0]/2, -size[1]/2],
];



// Morph two profile
function morph(profile1, profile2, slices=1, fn=0) = morph0(
	augment_profile(to_3d(profile1),max(len(profile1),len(profile2),fn)),
	augment_profile(to_3d(profile2),max(len(profile1),len(profile2),fn)),
	slices
);

function morph0(profile1, profile2, slices=1) = [
	for(index = [0:slices-1])
		interpolate_profile(profile1, profile2, index/(slices-1))
];

function interpolate_profile(profile1, profile2, t) = (1-t) * profile1 + t * profile2;


