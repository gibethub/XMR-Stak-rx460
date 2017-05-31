
CPP=g++-5
CPPFLAGS= -Ofast -flto -std=c++11 -march=native -fpermissive

CC=gcc-5
CFLAGS=-g -Ofast -flto -march=native 

LDLIBS= -lssl -lcrypto -lpthread  -L/usr/local/cuda-8.0/lib64/ -lOpenCL
LDFLAGS= -flto


srccppfiles = $(shell find . -name "*.cpp") 
objectscpp  = $(patsubst %.cpp, %.o, $(srccppfiles))

srcfiles = $(shell find . -name "*.c") 
objects  = $(patsubst %.c, %.o, $(srcfiles))



all: $(objectscpp) $(objects)
	$(CPP) $(LDFLAGS) $(objectscpp)  $(objects) -o xmr-opencl  $(LDLIBS) 


%.o: %.cpp 
	$(CPP) $(CPPFLAGS) -c -o $@  $<



%.o: %.c 
	$(CC) $(CFLAGS)  -c  -o $@ $<


clean:
	rm -rf $(objectscpp) $(objects) *.o xmr-opencl



