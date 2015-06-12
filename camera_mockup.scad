// camera concept
// animated, set FPS = 60 and Steps = 360

// base
union(){
    cube([500,300,20]);
    translate([0,20,20]) cube([500,20,20]);
    translate([0,260,20]) cube([500,20,20]);
}

// rear standard
translate([-$t*400,0,0]){
    union(){
        color("silver") translate([0,0,20]) cube([500,20,20]);
        color("silver") translate([0,280,20]) cube([500,20,20]);
        color("tan") translate([0,0,40]) cube([100,300,300]);
    }
}

// front standard
translate([$t*400,0,0]){
    union(){
        color("silver") translate([0,40,20]) cube([500,20,20]);
        color("silver") translate([0,240,20]) cube([500,20,20]);
        color("tan") translate([450,40,40]) cube([50,220,220]);
        color("black") translate([500,150,150]) rotate([0,90,0]) cylinder(r=25,h=50,$fn=36);
    }
}

// rear focus
union(){
    color("black") rotate([-90,0,0]) translate([25,-10,-25]) cylinder(r=5,h=350);
    color("black") rotate([-90,0,0]) translate([25,-10,-25]) rotate([0,0,-$t*360*8]) cylinder(r=15,h=10,$fn=6);
    color("black") rotate([-90,0,0]) translate([25,-10,315]) rotate([0,0,-$t*360*8]) cylinder(r=15,h=10,$fn=6);
}

// front focus
union(){
    color("black") rotate([-90,0,0]) translate([475,-10,-25]) cylinder(r=5,h=350);
    color("black") rotate([-90,0,0]) translate([475,-10,-25]) rotate([0,0,$t*360*8]) cylinder(r=15,h=10,$fn=6);
    color("black") rotate([-90,0,0]) translate([475,-10,315]) rotate([0,0,$t*360*8]) cylinder(r=15,h=10,$fn=6);
}