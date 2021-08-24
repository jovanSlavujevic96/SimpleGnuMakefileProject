.PHONY: clean

CXX = g++

CXXFLAGS = -std=c++11 -Wall -Werror -fPIC -pedantic-errors -I$(STAT_LIB_DIR)
LDFLAGS = -shared
TARGET = libsher.so

SOURCES = $(shell echo $(SHER_LIB_DIR)/*.cc)
OBJECTS = $(SOURCES:.cc=.o)

$(TARGET) : $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

all: $(TARGET)

clean: 
	$(RMDIR) $(TARGET) $(OBJECTS)
