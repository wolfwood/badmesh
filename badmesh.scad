depth= 6.1;
thickness = 4;
outer = 17;
inner = 13.9;
width=2.5;

overhang = width - ((outer-inner)/2);

translate ([0,0,-depth -thickness/2]) cube([outer,outer,thickness],true);

translate([-overhang -outer/2,-outer/2,-depth-thickness])
{
  cube([overhang,outer,thickness]);
  translate([2, 1, -width/2]) cube([width - 1,outer -2, 2+width/2]);
}
