// generic lens cap

$fn=360;

cap_id = 117; // diameter of lens
cap_height = 35; // height of inner surface
cap_thick = 4; // wall thickness of the cap
felt_thick = 0.8; // thickness of self-adhesive felt used to line inner surface of cap
felt_width = 20; // width of felt used to line inner surface of cap
round_corner = 2; // round corners to this radius

difference(){

    cylinder(d=cap_id+cap_thick*2+felt_thick*2, h=cap_height+cap_thick, center=false); //outer cylinder
    translate([0,0,cap_thick]) cylinder(d=cap_id,h=cap_height,center=false); //inner cylinder
    translate([0,0,cap_thick+(cap_height-felt_width)/2]) cylinder(d=cap_id+felt_thick*2,h=felt_width,center=false); //channel for felt
   

     // round corners of the cap
    // outer edge of wall
    difference(){
        rotate_extrude(convexity=2) translate([(cap_id+cap_thick*2+felt_thick*2)/2-round_corner,cap_height+cap_thick-round_corner,0]) square(round_corner, round_corner);
        rotate_extrude(convexity=2) translate([(cap_id+cap_thick*2+felt_thick*2)/2-round_corner,cap_height+cap_thick-round_corner,0]) circle(r=round_corner);
}
    // inner edge of wall
    difference(){
        rotate_extrude(convexity=2) translate([cap_id/2,cap_height+cap_thick-round_corner,0]) square(round_corner, round_corner);
        rotate_extrude(convexity=2) translate([cap_id/2+round_corner,cap_height+cap_thick-round_corner,0]) circle(r=round_corner);
    }
    // outer edge of cap
    difference(){
        rotate_extrude(convexity=2) translate([(cap_id+cap_thick*2+felt_thick*2)/2-round_corner,0,0]) square(round_corner, round_corner);
        rotate_extrude(convexity=2) translate([(cap_id+cap_thick*2+felt_thick*2)/2-round_corner,round_corner,0]) circle(r=round_corner);
    }
    // top edge of felt channel
    difference(){
        rotate_extrude(convexity=2) translate([cap_id/2,cap_thick+(cap_height-felt_width)/2-round_corner,0]) square(round_corner, round_corner);
        rotate_extrude(convexity=2) translate([cap_id/2+round_corner,cap_thick+(cap_height-felt_width)/2-round_corner,0]) circle(r=round_corner);
    }
    // bottom edge of felt channel
    difference(){
        rotate_extrude(convexity=2) translate([cap_id/2,cap_thick+felt_width+(cap_height-felt_width)/2,0]) square(round_corner, round_corner);
        rotate_extrude(convexity=2) translate([cap_id/2+round_corner,cap_thick+felt_width+(cap_height-felt_width)/2+round_corner,0]) circle(r=round_corner);
    }
}



