.PHONY: clean

CXX = g++

INCLUDE_FLAGS = -I$(APP_DIR) -I$(SHER_LIB_DIR) -I$(STAT_LIB_DIR)
CXXFLAGS = -std=c++11 -Wall -Werror -pedantic-errors $(INCLUDE_FLAGS)

LIBS = -lstat -lsher
LDIR = -L$(STAT_LIB_DIR) -lstat
#LDLIBS += -L$(SHER_LIB_DIR) -Wl,-rpath=$(SHER_LIB_DIR)

TARGET = app.exe

SOURCES = $(shell echo $(APP_DIR)/*.cc)
OBJECTS = $(SOURCES:.cc=.o)

$(TARGET) : $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDIR) $(LIBS)

all: $(TARGET)

clean: 
	$(RMDIR) $(TARGET) $(OBJECTS)
