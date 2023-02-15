all: test.stl

test.stl: badmesh.stl

%.stl: %.scad
	openscad -q --render -o $@ $<
