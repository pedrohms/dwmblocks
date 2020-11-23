PREFIX?=/usr/bin

output: dwmblocks.c blocks.h
    cc `pkg-config --cflags x11` `pkg-config --libs x11` -D_GNU_SOURCE dwmblocks.c -o dwmblocks
clean:
    rm -f *.o *.gch dwmblocks
install: output
    mkdir -p ${DESTDIR}${PREFIX}
	cp -f dwmblocks ${DESTDIR}${PREFIX}
