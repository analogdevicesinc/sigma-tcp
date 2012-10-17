DESTDIR=/usr/local

CFLAGS += -O2 -Wall -Werror -pedantic -std=gnu99

sigma_tcp: i2c.c regmap.c

install:
	install -d $(DESTDIR)/bin
	install sigma_tcp $(DESTDIR)/bin

clean:
	rm -rf sigma_tcp *.o
