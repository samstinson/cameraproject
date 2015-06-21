
/* 
Belt-and-pinion drive block using : 
1x 20x20 extrusion
1x 6mm GT2 belt
1x 5mm bore GT2 pulley
4x 625 bearings
1x 5mm shaft
1x M5 T-Nut
1x M5 screw w/ knob head
*/

$fn=72;


// hardware parts

% color("olive",.75) translate([-30.1,-2.5,40]) rotate([0,90,0]) cylinder(d=7,h=80.2); // focus shaft
% color("olive",.75)translate([-30.1,-2.5,40]) rotate([0,90,0]) cylinder(d=16,h=12.2); // focus knob
% color("black",.75) translate([34,-2.5,40]) rotate([0,90,0]) cylinder(d=19,h=6.1); // focus shaft bearing
% color("black",.75) translate([-0.1,-2.5,40]) rotate([0,90,0]) cylinder(d=19,h=6.1); // focus shaft bearing

% color("black",.75) translate([15,-2.5,40]) rotate([0,90,0]) cylinder(d=14,h=16);  // belt pulley
% color("black",.75) translate([15,-2.5,40]) rotate([0,90,0]) cylinder(d=18,h=1.5);  // belt pulley
% color("black",.75) translate([23.5,-2.5,40]) rotate([0,90,0]) cylinder(d=18,h=7.5);  // belt pulley
% color("black",.75) translate([17.5,4.5,15]) rotate([0,90,0]) cylinder(d=19,h=5);  // belt idler bearing
% color("black",.75) translate([17.5,4.5,65]) rotate([0,90,0]) cylinder(d=19,h=5);  // belt idler bearing

% color("black",.75) translate([15,26,30]) cube([10,1.5,20]); // tnut
% color("black",.75) translate([20,25,40]) rotate([-90,0,0]) cylinder(d=5,h=25);  // lock knob shaft
% color("black",.75) translate([20,45,40]) rotate([-90,0,0]) cylinder(d=12,h=5,$fn=12);  // lock knob
% color("black",.75) translate([20,43,40]) rotate([-90,0,0]) cylinder(d1=8,d2=12,h=2,$fn=12);  // lock knob
% color("silver",.75) translate([20,42,40]) rotate([-90,0,0]) cylinder(d=16,h=1);  // fender washer

% color("silver",.75) translate([20,20,40]) scale([1,1,10]) misumi_2020();  //extrusion


difference(){
    // outer body

    hull() {
        union(){
            translate([0,-2.5,0]) cube([40,45,80]);
            translate([0,4.5,15]) rotate([0,90,0]) cylinder(d=25,h=40);
            translate([0,4.5,65]) rotate([0,90,0]) cylinder(d=25,h=40);
            translate([0,-2.5,40]) rotate([0,90,0]) cylinder(d=25,h=40);
            translate([0,-2.5,27.5]) cube([40,25,25]);
       }
    }


    // cutaway sections
    translate([19.9,-20,-0.1]) cube([20.2,80,80.2]);
//    translate([-0.1,-20,-0.1]) cube([20.2,80,80.2]);
//    translate([-0.1,-20,-0.1]) cube([10.4,80,80.2]);
//    translate([29.7,-20,-0.1]) cube([10.4,80,80.2]);


    // 20x20 extrusion, just use a cube...
    translate([9.95,9.95,-0.1]) cube([20.1,20.1,80.2]);  
    
    union(){
        // bearing cavity for 625ZZ + 2x m5x20 washer
        translate([16.5,4.5,15]) rotate([0,90,0]) cylinder(d=21,h=7);
        translate([-0.1,4.5,15]) rotate([0,90,0]) cylinder(d=5.2,h=40.2); //m5x20 screw+nut trap
        translate([-0.1,4.5,15]) rotate([0,90,0]) cylinder(d=9,h=5.2, $fn=6); //m5x20 screw+nut trap
        translate([34,4.5,15]) rotate([0,90,0]) cylinder(d=9,h=6.1); //m5x20 screw+nut trap
    
        translate([16.5,4.5,65]) rotate([0,90,0]) cylinder(d=21,h=7);
        translate([-0.1,4.5,65]) rotate([0,90,0]) cylinder(d=5.2,h=40.2); //m5x20 screw+nut trap
        translate([-0.1,4.5,65]) rotate([0,90,0]) cylinder(d=9,h=5.2, $fn=6); //m5x20 screw+nut trap
        translate([34,4.5,65]) rotate([0,90,0]) cylinder(d=9,h=6.1); //m5x20 screw+nut trap
    }
    
    union(){
        // pulley cavity + bearings
        translate([13.95,-2.5,40]) rotate([0,90,0]) cylinder(d=21,h=17.1);
        translate([-0.1,-2.5,40]) rotate([0,90,0]) cylinder(d=7,h=40.2);
        translate([15,-2.5,29.5]) cube([15,21,21]);
        translate([34,-2.5,40]) rotate([0,90,0]) cylinder(d=19,h=6.1);
        translate([-0.1,-2.5,40]) rotate([0,90,0]) cylinder(d=19,h=6.1);
    }

    // belt clearance
    hull(){
        translate([16.5,4.5,4.5]) cube([7,10,71]); 
        translate([16.5,-2.5,40]) rotate([0,90,0]) cylinder(d=18,h=7);
    }
      
    
    union(){
        translate([-0.1,34,15]) rotate([0,90,0]) cylinder(d=5.2,h=40.2); //m5x20 screw+nut trap
        translate([-0.1,34,15]) rotate([0,90,0]) cylinder(d=9,h=5.2, $fn=6); //m5x20 screw+nut trap
        translate([34,34,15]) rotate([0,90,0]) cylinder(d=9,h=6.1); //m5x20 screw+nut trap
    
        translate([-0.1,34,65]) rotate([0,90,0]) cylinder(d=5.2,h=40.2); //m5x20 screw+nut trap
        translate([-0.1,34,65]) rotate([0,90,0]) cylinder(d=9,h=5.2, $fn=6); //m5x20 screw+nut trap
        translate([34,34,65]) rotate([0,90,0]) cylinder(d=9,h=6.1); //m5x20 screw+nut trap
    
    }
    
    // m5x20 tnut + knob for locking slide
    translate([20,25,40]) rotate([-90,0,0]) cylinder(d=5.2,h=25);
    translate([20,42,40]) rotate([-90,0,0]) cylinder(d=16,h=3); //fender washer

    // delrin slider inserts ??
//    translate([6.81,7.5,-0.1]) cube([3.5,25,20.1]);
//    translate([6.81,7.5,60]) cube([3.5,25,20.1]);
//    translate([29.69,7.5,-0.1]) cube([3.5,25,20.1]);
//    translate([29.69,7.5,60]) cube([3.5,25,20.1]);
//    translate([7.5,6.81,19.9]) cube([25,3.5,40.2]);
//    translate([7.5,29.69,19.9]) cube([25,3.5,40.2]);


}

// delrin sliders ??
//% color("goldenrod",.75) translate([6.81,7.5,-0.1]) cube([3.5,25,20.1]);  // delrin slider
//% color("goldenrod",.75) translate([6.81,7.5,60]) cube([3.5,25,20.1]);  // delrin slider
//% color("goldenrod",.75) translate([29.69,7.5,-0.1]) cube([3.5,25,20.1]);  // delrin slider
//% color("goldenrod",.75) translate([29.69,7.5,60]) cube([3.5,25,20.1]);  // delrin slider
//% color("goldenrod",.75) translate([7.5,6.81,19.9]) cube([25,3.5,40.2]);  // delrin slider
//% color("goldenrod",.75) translate([7.5,29.69,19.9]) cube([25,3.5,40.2]);  // delrin slider


module misumi_2020(){
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
}