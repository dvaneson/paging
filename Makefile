#----------------------------------------------------------------------------
include Makefile.common

.phony: all run clean

all:
	make -C libs
	make -C paging

run: all
	make -C paging run

clean:
	make -C libs   clean
	make -C paging clean

#----------------------------------------------------------------------------
