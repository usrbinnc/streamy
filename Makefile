CXX=g++
CFLAGS=-g -O3
FRAMEWORKS=-framework CoreAudio -framework ApplicationServices -framework CoreMidi -framework AudioToolbox -framework AudioUnit

all: Streamy

%.o: %.cpp
	$(CXX) $< $(CFLAGS) -c -o $@ 

Streamy: Streamy.o
	$(CXX) $(CFLAGS) $(FRAMEWORKS) -o $@ $<

clean:
	-rm Streamy.o
	-rm Streamy
