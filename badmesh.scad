thickness = 4;
outer = 17;
inner = 13.9;
width=2.5;

overhang = width - ((outer-inner)/2);

cube([outer,outer,thickness],true);

translate([-overhang -outer/2,-outer/2,-thickness/2]) {
  cube([overhang,outer,thickness]);
  translate([0, 0, -width/2]) cube([width, outer, width/2]);
  *translate([2, 1, -width/2]) cube([width - 1,outer -2, 2+width/2]);
}
