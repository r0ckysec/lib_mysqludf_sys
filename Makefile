LIBDIR ?= /usr/lib
CC ?= gcc
CFLAGS = -Wall -I/usr/include/mysql -I. -fPIC

all: install

install:
	$(CC) $(CFLAGS) -shared lib_mysqludf_sys.c -o $(LIBDIR)/lib_mysqludf_sys.so

arm64:
	aarch64-linux-gnu-gcc $(CFLAGS) -shared lib_mysqludf_sys.c -o lib_mysqludf_sys-arm64.so

clean:
	rm -f *.so
