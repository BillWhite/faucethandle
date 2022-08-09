SOURCES=faucetbody.scad

all: faucetbody.stl

%.stl: %.scad
	openscad -o $@ $< -d $*.d

clean:
	rm -f *.d *.stl

-include faucetbody.d
