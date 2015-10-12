
/* 
Belt-and-pinion drive block
Hardware list : 
1x 20x20 extrusion
1x 6mm GT2 belt
1x 5mm bore GT2 pulley
4x 626 bearings (6x19x6)
1x 6mm shaft
2x M5x30 screw + nut
1x M5 T-Nut
1x M5 screw w/ knob head
*/

//union(){
//difference(){
//    hull() {
//        union() {
//            translate([40,-2.5,0]) cube([220,45,80]);
//            translate([40,4.5,15]) rotate([0,90,0]) cylinder(d=25,h=220);
//            translate([40,4.5,65]) rotate([0,90,0]) cylinder(d=25,h=220);
//            translate([40,-2.5,40]) rotate([0,90,0]) cylinder(d=25,h=220);
//            translate([40,-2.5,27.5]) cube([40,25,25]);    
//        }
//    }    
//translate([39,-15,40]) rotate([0,90,0]) cylinder(d=80,h=222, $fn=360);
//
//%translate([35,0,0]) union () {
//    translate([9.95,9.95,-0.1]) cube([20.1,20.1,80.2]);  
//    translate([10.2,10.2,-0.1]) cylinder(d=.75,h=80.2);  
//    translate([29.8,10.2,-0.1]) cylinder(d=.75,h=80.2);     
//    translate([10.2,29.8,-0.1]) cylinder(d=.75,h=80.2);     
//    translate([29.8,29.8,-0.1]) cylinder(d=.75,h=80.2);     
//}
//%translate([65,0,0]) union () {
//    translate([9.95,9.95,-0.1]) cube([20.1,20.1,80.2]);  
//    translate([10.2,10.2,-0.1]) cylinder(d=.75,h=80.2);  
//    translate([29.8,10.2,-0.1]) cylinder(d=.75,h=80.2);     
//    translate([10.2,29.8,-0.1]) cylinder(d=.75,h=80.2);     
//    translate([29.8,29.8,-0.1]) cylinder(d=.75,h=80.2);     
//}
//}
//pinion_drive();
//translate([300,0,0]) mirror(true, false, false) pinion_drive();
//
//}


pinion_drive ();



module pinion_drive() {
$fn=72;
// hardware parts
alpha=.6;
% color("olive",alpha) translate([-30.1,-2.5,40]) rotate([0,90,0]) cylinder(d=6,h=180.2); // focus shaft
% color("olive",alpha) translate([-30.1,-2.5,40]) rotate([0,90,0]) cylinder(d=16,h=12.2); // focus knob
% color("black",alpha) translate([34,-2.5,40]) rotate([0,90,0]) cylinder(d=19,h=6); // focus shaft bearing
% color("black",alpha) translate([-0.1,-2.5,40]) rotate([0,90,0]) cylinder(d=19,h=6); // focus shaft bearing

% color("black",alpha) translate([15,-2.5,40]) rotate([0,90,0]) cylinder(d=14,h=16);  // belt pulley
% color("black",alpha) translate([15,-2.5,40]) rotate([0,90,0]) cylinder(d=18,h=1.5);  // belt pulley
% color("black",alpha) translate([23.5,-2.5,40]) rotate([0,90,0]) cylinder(d=18,h=7.5);  // belt pulley
% color("black",alpha) translate([17,4.5,15]) rotate([0,90,0]) cylinder(d=19,h=6);  // belt idler bearing
% color("black",alpha) translate([17,4.5,65]) rotate([0,90,0]) cylinder(d=19,h=6);  // belt idler bearing

% color("black",alpha) translate([15,26,30]) cube([10,1.5,20]); // tnut
% color("black",alpha) translate([20,25,40]) rotate([-90,0,0]) cylinder(d=5,h=25);  // lock knob shaft
% color("black",alpha) translate([20,45,40]) rotate([-90,0,0]) cylinder(d=12,h=5,$fn=12);  // lock knob
% color("black",alpha) translate([20,43,40]) rotate([-90,0,0]) cylinder(d1=8,d2=12,h=2,$fn=12);  // lock knob
% color("silver",alpha) translate([20,42,40]) rotate([-90,0,0]) cylinder(d=16,h=1);  // fender washer

% color("black",alpha) translate([0.2,4.5,15]) rotate([0,90,0]) cylinder(d=5,h=35); //m5x30 screw+nut trap
% color("black",alpha) translate([0.5,4.5,15]) rotate([0,90,0]) cylinder(d=8.8,h=5, $fn=6); //m5x30 screw+nut trap
% color("black",alpha) translate([33.5,4.5,15]) rotate([0,90,0]) cylinder(d=8.5,h=5); //m5x30 screw+nut trap

% color("black",alpha) translate([0.2,4.5,65]) rotate([0,90,0]) cylinder(d=5,h=35); //m5x30 screw+nut trap
% color("black",alpha) translate([0.5,4.5,65]) rotate([0,90,0]) cylinder(d=8.8,h=5, $fn=6); //m5x30 screw+nut trap
% color("black",alpha) translate([33.5,4.5,65]) rotate([0,90,0]) cylinder(d=8.5,h=5); //m5x30 screw+nut trap

//% color("black",alpha) translate([0.2,34,15]) rotate([0,90,0]) cylinder(d=5,h=35); //m5x30 screw+nut trap
//% color("black",alpha) translate([0.5,34,15]) rotate([0,90,0]) cylinder(d=8.8,h=5, $fn=6); //m5x30 screw+nut trap
//% color("black",alpha) translate([33.5,34,15]) rotate([0,90,0]) cylinder(d=8.5,h=5); //m5x30 screw+nut trap
//
//% color("black",alpha) translate([0.2,34,65]) rotate([0,90,0]) cylinder(d=5,h=35); //m5x30 screw+nut trap
//% color("black",alpha) translate([0.5,34,65]) rotate([0,90,0]) cylinder(d=8.8,h=5, $fn=6); //m5x30 screw+nut trap
//% color("black",alpha) translate([34.5,34,65]) rotate([0,90,0]) cylinder(d=8.5,h=5); //m5x30 screw+nut trap

//% color("silver",alpha) translate([20,20,40]) scale([1,1,10]) misumi_2020();  //extrusion
//% color("silver",alpha) translate([45,20,40]) scale([1,1,10]) misumi_2020();  //extrusion

difference(){

    // outer body
    hull() {
        union() {
            translate([0,-2.5,0]) cube([65,45,80]);
//            translate([0.5,-2,0]) cylinder(d=1,h=80);
//            translate([39.5,-2,0]) cylinder(d=1,h=80);
//            translate([0.5,42,0]) cylinder(d=1,h=80);
//            translate([39.5,42,0]) cylinder(d=1,h=80);
//            translate([0,4.5,15]) rotate([0,90,0]) cylinder(d=25,h=65);
//            translate([0,4.5,65]) rotate([0,90,0]) cylinder(d=25,h=65);
            translate([0,-2.5,40]) rotate([0,90,0]) cylinder(d=30,h=65);
            translate([0,-2.5,27.5]) cube([40,25,25]);
       }
    }
//%            translate([0,-2.5,0]) cube([40,45,85]);

    // cutaway sections
//    translate([19.9,-20,-0.1]) cube([20.2,80,80.2]);
//    translate([-0.1,-20,-0.1]) cube([20.2,80,80.2]);
//    translate([-0.1,-20,-0.1]) cube([10.05,80,80.2]);
//    translate([30.05,-20,-0.1]) cube([10.05,80,80.2]);
//    translate([-0.1,20,-0.1]) cube ([41.1,25,80.2]);
//    translate([-0.1,-20,-0.1]) cube ([41,35,80.2]);
//    translate([-0.1,-20,-0.1]) cube([30.15,80,80.2]);
//    translate([9.95,-20,-0.1]) cube([30.15,80,80.2]);

    // 20x20 extrusion, just use a cube...
    // pinion drive sliding rail
union(){
    translate([9.95,9.95,-0.1]) cube([20.1,20.1,80.2]);  
//    translate([10.2,10.2,-0.1]) cylinder(d=.75,h=80.2);  
//    translate([29.8,10.2,-0.1]) cylinder(d=.75,h=80.2);     
//    translate([10.2,29.8,-0.1]) cylinder(d=.75,h=80.2);     
//    translate([29.8,29.8,-0.1]) cylinder(d=.75,h=80.2);     
}
    // center fixed rail

translate([25,0,0]) union() {
        translate([9.95,9.95,-0.1]) cube([20.1,20.1,80.2]);  
//        translate([10.2,10.2,-0.1]) cylinder(d=.75,h=80.2);  
//        translate([29.8,10.2,-0.1]) cylinder(d=.75,h=80.2);     
//        translate([10.2,29.8,-0.1]) cylinder(d=.75,h=80.2);     
//        translate([29.8,29.8,-0.1]) cylinder(d=.75,h=80.2); 
        translate([35,20,15]) rotate([0,90,0]) cylinder(d=9.5,h=5.1);
        translate([30,20,15]) rotate([0,90,0]) cylinder(d=5.5,h=10.1);
        translate([20,37.5,15]) rotate([270,90,0]) cylinder(d=9.5,h=15.1);
        translate([20,27.5,15]) rotate([270,90,0]) cylinder(d=5.5,h=20.1);
        translate([35,20,65]) rotate([0,90,0]) cylinder(d=9.5,h=5.1);
        translate([30,20,65]) rotate([0,90,0]) cylinder(d=5.5,h=10.1);
        translate([20,37.5,65]) rotate([270,90,0]) cylinder(d=9.5,h=15.1);
        translate([20,27.5,65]) rotate([270,90,0]) cylinder(d=5.5,h=20.1);

}

    union(){
        // idler bearings
        translate([16,4.5,15]) rotate([0,90,0]) cylinder(d=21,h=8);  // 626 bearing + 2x m5x30 washer
        translate([-0.1,4.5,15]) rotate([0,90,0]) cylinder(d=5.5,h=40.2); //m5x30 screw+nut trap
        translate([-0.1,4.5,15]) rotate([0,90,0]) cylinder(d=9.3,h=5.6, $fn=6); //m5x30 screw+nut trap
        translate([34.5,4.5,15]) rotate([0,90,0]) cylinder(d=9.5,h=30.6); //m5x30 screw+nut trap
    
        translate([16,4.5,65]) rotate([0,90,0]) cylinder(d=21,h=8);  // 626 bearing + 2x m5x30 washer
        translate([-0.1,4.5,65]) rotate([0,90,0]) cylinder(d=5.5,h=40.2); //m5x30 screw+nut trap
        translate([-0.1,4.5,65]) rotate([0,90,0]) cylinder(d=9.3,h=5.6, $fn=6); //m5x30 screw+nut trap
        translate([34.5,4.5,65]) rotate([0,90,0]) cylinder(d=9.5,h=30.6); //m5x30 screw+nut trap
    }
    
    union(){
        // belt pulley + bearings
        translate([13.95,-2.5,40]) rotate([0,90,0]) cylinder(d=21,h=52);
        translate([-0.1,-2.5,40]) rotate([0,90,0]) cylinder(d=16,h=40.2);
        translate([15,-2.5,29.5]) cube([15.05,21,21]);
        translate([34,-2.5,40]) rotate([0,90,0]) cylinder(d=19,h=6.1);
        translate([-0.1,-2.5,40]) rotate([0,90,0]) cylinder(d=19,h=6.1);
    }

hull(){
        translate([15,-2.5,29.5]) rotate([0,45,0]) cube([10.6,20,10.6]);
        translate([15,-2.5,50.5]) rotate([0,45,0]) cube([10.6,20,10.6]);
        translate([15,-2.5,40]) rotate([0,90,0]) cylinder(d=21,h=15);
}

    // belt clearance
    hull(){
        translate([16,4.5,4.5]) cube([8,10,71]); 
        translate([16,-2.5,40]) rotate([0,90,0]) cylinder(d=18,h=8);
    }
      
    
//    union(){
//        translate([-0.1,34,15]) rotate([0,90,0]) cylinder(d=5.5,h=40.2); //m5x30 screw+nut trap
//        translate([-0.1,34,15]) rotate([0,90,0]) cylinder(d=9.3,h=5.6, $fn=6); //m5x30 screw+nut trap
//        translate([34.5,34,15]) rotate([0,90,0]) cylinder(d=10.5,h=5.6); //m5x30 screw+nut trap
//    
//        translate([-0.1,34,65]) rotate([0,90,0]) cylinder(d=5.5,h=40.2); //m5x30 screw+nut trap
//        translate([-0.1,34,65]) rotate([0,90,0]) cylinder(d=9.3,h=5.6, $fn=6); //m5x30 screw+nut trap
//        translate([34.5,34,65]) rotate([0,90,0]) cylinder(d=10.5,h=5.6); //m5x30 screw+nut trap
//    
//    }
    
    // m5x30 tnut + knob for locking slide
    translate([20,25,40]) rotate([-90,0,0]) cylinder(d=5.5,h=25);
    translate([20,42,40]) rotate([-90,0,0]) cylinder(d=16,h=3); //fender washer

// delrin slider inserts ??
//    translate([6.81,7.5,-0.1]) cube([3.5,25,20.1]);
//    translate([6.81,7.5,60]) cube([3.5,25,20.1]);
//    translate([29.69,7.5,-0.1]) cube([3.5,25,20.1]);
//    translate([29.69,7.5,60]) cube([3.5,25,20.1]);
//    translate([7.5,6.81,19.9]) cube([25,3.5,40.2]);
//    translate([7.5,29.69,19.9]) cube([25,3.5,40.2]);


}
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