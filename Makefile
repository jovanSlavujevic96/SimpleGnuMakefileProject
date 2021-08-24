ifndef MAKE
export MAKE = make
endif

ifndef RMDIR
export RMDIR = rm -rf
endif

ifndef MV
export MV = mv
endif

ifndef PWD
export PWD = pwd
endif

ifndef CPDIR
export CP = cp -r
endif

ROOT_DIR = $(shell pwd)
export STAT_LIB_DIR = $(ROOT_DIR)/stat_lib
export SHER_LIB_DIR = $(ROOT_DIR)/sher_lib
export APP_DIR = $(ROOT_DIR)/app

all: stat_lib sher_lib app

clean: stat_lib_clean sher_lib_clean app_clean

stat_lib:
	@echo =================================
	@echo     Building Static Library
	@echo =================================
	$(MAKE) -C $(STAT_LIB_DIR) all

stat_lib_clean:
	@echo =================================
	@echo     Cleaning Static Library
	@echo =================================
	$(MAKE) -C $(STAT_LIB_DIR) clean

sher_lib:
	@echo =================================
	@echo     Building Shared Library
	@echo =================================
	$(MAKE) -C $(SHER_LIB_DIR) all

sher_lib_clean:
	@echo =================================
	@echo     Cleaning Shared Library
	@echo =================================
	$(MAKE) -C $(SHER_LIB_DIR) clean

app:
	@echo =================================
	@echo       Building Application
	@echo =================================
	$(MAKE) -C $(APP_DIR) all

app_clean:
	@echo =================================
	@echo       Cleaning Application
	@echo =================================
	$(MAKE) -C $(APP_DIR) clean

.PHONY: all clean stat_lib sher_lib app
