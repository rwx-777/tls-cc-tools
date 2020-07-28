#
# Modified to work on macOS and Linux with OpenSSL 1.0.1, 1.0.2 and 1.1.x
#
CC=cc
OSNAME := $(shell uname -s)
CFLAGS=-c -Wall -g -D_GNU_SOURCE
SOURCES=$(wildcard *.c)
LDFLAGS=
LIBS=-lssl -lcrypto -ldl
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=verify-cc-tls
ifeq ($(OSNAME),Darwin)
	# use an OpenSSL version 1.1.1 installed with brew:
	OSSL=/usr/local/Cellar/openssl@1.1/1.1.1g
	CFLAGS += -I$(OSSL)/include
	LDFLAGS += -L$(OSSL)/lib -Wl,-rpath,$(OSSL)/lib
endif
# on Linux use the system's OpenSSL lib in /usr

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o; rm -f $(EXECUTABLE)
