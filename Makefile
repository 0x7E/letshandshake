VERSION=0.0.1
LIBEVENTDIR=/opt/local
CPPFLAGS=-I$(LIBEVENTDIR)/include
CFLAGS=-O2 -Wall
LDFLAGS=-L$(LIBEVENTDIR)/lib -levent_core

letshandshake: letshandshake.o

letshandshake.exe: Makefile letshandshake.c
	i586-mingw32msvc-gcc -s -O2 -Wall -o letshandshake.exe letshandshake.c -levent_core -lws2_32

clean:
	rm -f letshandshake letshandshake.o

dist: dist-unix dist-win32

dist-unix:
	mkdir letshandshake-$(VERSION)
	ln Makefile letshandshake.c COPYRIGHT letshandshake-$(VERSION)
	tar -czf ../letshandshake-$(VERSION).tar.gz letshandshake-$(VERSION)
	rm -rf letshandshake-$(VERSION)

dist-win32: letshandshake.exe
	zip ../letshandshake-$(VERSION).zip letshandshake.exe

