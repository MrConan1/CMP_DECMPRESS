CC := gcc
CFLAGS :=
INSTALL := install
PREFIX := /usr/local
bindir := $(PREFIX)/bin

cmp_decmpress: decompress_rtns.c cmp_decmpress.c
	$(CC) $(CFLAGS) decompress_rtns.c cmp_decmpress.c -o $@

.PHONY: all clean install

all: cmp_decmpress

install: cmp_decmpress
	$(INSTALL) -d $(bindir)
	$(INSTALL) cmp_decmpress $(bindir)

clean:
rm -f cmp_decmpress
