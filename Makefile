PREFIX ?= /usr/local
CC ?= cc

output: dwmblocks.c config.h
	${CC} `pkg-config --cflags x11 --libs x11` dwmblocks.c -o dwmblocks


clean:
	rm -f *.o *.gch dwmblocks
	
install: output
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dwm ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks
	
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
