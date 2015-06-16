// generic lens cap

cap_id = 118; // outer diameter of lens barrel
cap_height = 35; // height of inner surface
cap_thick = 3; // wall thickness of the cap
felt_thick = 0.7; // thickness of self-adhesive felt used to line inner surface of cap
felt_width = 20; // width of felt used to line inner surface of cap
round_corner = min(1, cap_thick/2); // round corners to this radius, clamped to half of wall thickness

// logo should have origin set to center of graphic in Inkscape before exporting as DXF
// e.g. a nominally 500x300px logo should be moved to -250,-150
logo_scale = .15; // scaling factor for logo DXF
logo_name = "schneider_logo.dxf"; 

F=0.1;  //fudge factor, openscad can't even manifold...


union(){
    rotate_extrude(convexity=1, $fn=720)
        difference() {
            translate([cap_id/2,0,0]){
                square([cap_thick,cap_height+cap_thick]);
            }
            translate([0,cap_thick,0]){
                square([cap_id/2,cap_height+F]);
                }
            translate([cap_id/2,cap_thick+(cap_height-felt_width)/2]){
                  translate([-F,0,0]){
                      square([felt_thick+F,felt_width]);
                      }
                  circle(felt_thick, $fn=36);
                  translate([0,felt_width,0]){
                      circle(felt_thick, $fn=36);
                      }
            }
            
            translate([cap_id/2+cap_thick-round_corner,cap_height+cap_thick-round_corner,0]){
                difference(){
                    square(round_corner+F);
                    circle(round_corner, $fn=36);            
                }
            }
    
            translate([cap_id/2,cap_height+cap_thick-round_corner,0]){
                difference(){
                    translate([-F,0,0])
                        square(round_corner+F);
                    translate([round_corner,0,0])
                        circle(round_corner, $fn=36);            
                }
            }
    
            translate([cap_id/2+cap_thick-round_corner,0,0]){
                difference(){
                    translate([0,0,0])
                        square(round_corner+F);
                    translate([0,round_corner,0])
                        circle(round_corner, $fn=36);            
                }
            }
    }
    // speedup : carve out logo from cylinder, instead of rotate_extrude'd shape
    difference(){
        cylinder(d=cap_id+cap_thick,h=cap_thick, $fn=36); 
        translate([0,0,-F])
            linear_extrude(height=1+F,convexity=1,slices=1) // speedup, don't need more than 1 slice...
                scale([logo_scale,logo_scale,logo_scale])
                    mirror([0,1,0])
                        import(logo_name);
    }
}

