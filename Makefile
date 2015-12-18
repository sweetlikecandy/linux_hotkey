CXXFLAGS=-std=c++14

LDLIBS+=-lboost_system
LDLIBS+=-lboost_filesystem
LDLIBS+=-lboost_program_options
LDLIBS+=-lstdc++


.PHONY: default-target
default-target: linux_hotkey

linux_hotkey: linux_hotkey.o virtual_keyboard.o

%: %.cpp

linux_hotkey.o: virtual_keyboard.h 
virtual_keyboard.o: virtual_keyboard.h

.PHONY: clean
clean:
	$(RM) linux_hotkey *.o
