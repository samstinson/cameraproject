// mockup of 42cm xenar flange mount.
// 5-bolt, 148.5mm OD, 123.5mm ID. 3.6mm thick

//$fn=64;

difference(){
    cylinder(d=148.5,h=3.6);
    //center hole
    cylinder(d=123.5,h=10,center=true);
    rotate([0,0,72]) translate([(148.5+123.5)/4,0,0]) cylinder(d=3.2,h=10,center=true);
    rotate([0,0,72*2]) translate([(148.5+123.5)/4,0,0]) cylinder(d=3.2,h=10,center=true);
    rotate([0,0,72*3]) translate([(148.5+123.5)/4,0,0]) cylinder(d=3.2,h=10,center=true);
    rotate([0,0,72*4]) translate([(148.5+123.5)/4,0,0]) cylinder(d=3.2,h=10,center=true);
    rotate([0,0,72*5]) translate([(148.5+123.5)/4,0,0]) cylinder(d=3.2,h=10,center=true);
}