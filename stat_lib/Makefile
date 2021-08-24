.PHONY: clean

ARCH = ar rc

CXXFLAGS = -std=c++11 -fpermissive -Wall -Werror -pedantic-errors -I$(SHER_LIB_DIR)
TARGET = libstat.a

SOURCES = $(shell echo $(STAT_LIB_DIR)/*.cc)
OBJECTS = $(SOURCES:.cc=.o)

$(TARGET) : $(OBJECTS)
	$(ARCH) $@ $<

all: $(TARGET)

clean: 
	$(RMDIR) $(TARGET) $(OBJECTS)