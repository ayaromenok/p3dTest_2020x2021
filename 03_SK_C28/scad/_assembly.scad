include <sector.scad>
$gFn = $preview ? 1 : 8;
rTwr=71;

translate([-92,-60, 10])
linear_extrude(20)
polygon(
        points=[
                [0,0],
                [80,0],
                [150,10],
                [150,110],
                [80,120],
                [0,120]
                ]);


cylinder(10, rTwr, rTwr, $fn=$gFn*rTwr);
sector(pX=-rTwr*2, fN=$gFn);
