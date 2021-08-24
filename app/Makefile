.PHONY: clean

CXX = g++

INCLUDE_FLAGS = -I$(APP_DIR) -I$(SHER_LIB_DIR) -I$(STAT_LIB_DIR)
CXXFLAGS = -std=c++11 -Wall -Werror -pedantic-errors $(INCLUDE_FLAGS)
LDLIBS = -L$(SHER_LIB_DIR) -Wl,-rpath=$(SHER_LIB_DIR) -lsher -L$(STAT_LIB_DIR) -lstat

TARGET = app.exe

SOURCES = $(shell echo $(APP_DIR)/*.cc)
OBJECTS = $(SOURCES:.cc=.o)

$(TARGET) : $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDLIBS)

all: $(TARGET)

clean: 
	$(RMDIR) $(TARGET) $(OBJECTS)
