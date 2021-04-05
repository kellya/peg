
/* [peg parameters] */
// How big is the hole you are filling
peg_diameter = 20;
// How deep does it go in the hole?
peg_height = 5;

/* [cap parameters] */
// The base width of the cap (should be a little bigger than the peg
cap_diameter = 23;

/* [Hidden] */
$fn = 50;

// Make the peg
cylinder(d=peg_diameter, h=peg_height);

//Make the cap, on top of the peg
translate([0,0,peg_height])
    intersection(){
        sphere(d=cap_diameter);
        translate([0,0,cap_diameter/2])
        cube(size=cap_diameter, center=true);
        }

