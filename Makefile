#----------------------------------------------------------------------------
include Makefile.common

.phony: all run libs clean

BOOT = paging

all:	libs
	make -C ${BOOT}

run:	libs
	make -C ${BOOT} run

libs:
	make -C libs

clean:
	make -C paging             clean
	make -C libs               clean

#----------------------------------------------------------------------------
