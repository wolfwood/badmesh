depth= 6.1;
thickness = 4;
outer = 17;
inner = 13.9;
width=2.5;

module fing(){
  union(){
    translate ([0,0,-depth]) translate ([0,0,-thickness/2]) cube([outer,outer,thickness],true);
    fang();
  }
}

module fang(){
  overhang = width - ((outer-inner)/2);
  translate([-outer/2,-outer/2,-depth-thickness])// - [0,0,0])

    //mirror([0,0,0])
    translate([-overhang, 0, 0])
    union() {
    //difference()
      cube([overhang,outer,thickness]);
    translate([2, 1, -width/2]) cube([width - 1,outer -2, 2+width/2]);
  }
}
fing();
