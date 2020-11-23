PREFIX ?= /usr/local
CC ?= cc

all: options dwmblocks

dwmblocks: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}
	
options:
	@echo dwm build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"
	
clean:
	rm -f *.o *.gch dwmblocks
	
install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dwmblocks ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks
	
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
