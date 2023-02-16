SCAD = openscad

all: test.stl

test.stl: badmesh.stl

%.stl: %.scad
	$(SCAD) -q --render -o $@ $<
