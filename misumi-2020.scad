
union(){
    union(){
        translate([9,6.5,0]) cube([2,7,20], center=true);
        translate([6.5,9,0]) cube([7,2,20], center=true);
        translate([8,8,0]) cube([4,4,20], center=true);
        translate([5,5,0]) rotate([0,0,-45]) cube([1.5,10,20], center=true);
    };
    
    rotate([0,0,90]) union(){
        translate([9,6.5,0]) cube([2,7,20], center=true);
        translate([6.5,9,0]) cube([7,2,20], center=true);
        translate([8,8,0]) cube([4,4,20], center=true);
        translate([5,5,0]) rotate([0,0,-45]) cube([1.5,10,20], center=true);
    };

    rotate([0,0,180]) union(){
        translate([9,6.5,0]) cube([2,7,20], center=true);
        translate([6.5,9,0]) cube([7,2,20], center=true);
        translate([8,8,0]) cube([4,4,20], center=true);
        translate([5,5,0]) rotate([0,0,-45]) cube([1.5,10,20], center=true);
    };

    rotate([0,0,270]) union(){
        translate([9,6.5,0]) cube([2,7,20], center=true);
        translate([6.5,9,0]) cube([7,2,20], center=true);
        translate([8,8,0]) cube([4,4,20], center=true);
        translate([5,5,0]) rotate([0,0,-45]) cube([1.5,10,20], center=true);
    };
    
    cube([8,8,20], center=true);
}

scale(1,1,1) import("misumi-2020.stl", center=true);