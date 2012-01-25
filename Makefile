SYSTEM := $(shell uname)
ifeq ($(SYSTEM),Dalrwin)
	CFLAGS=-I/usr/X11/include/ -ggdb3 -L/usr/X11/lib -lpng
else
	CFLAGS=`pkg-config --libs --cflags libpng` -ggdb3
endif
all: png2txt
