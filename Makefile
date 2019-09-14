CFLAGS+= -W -Wall -O2 -std=c99 -g -pedantic
#CFLAGS+= -I/usr/local/include
#CFLAGS+= -Imtemplate
#LDFLAGS+= -L/usr/local/lib
#LDFLAGS+= -Lmtemplate

all: main

main: $@.c $(SRCS) $(HDRS)
	$(CC) $(CFLAGS) -o $@ $@.c $(SRCS) $(LDFLAGS)

test: 
	@echo CURDIR:${.CURDIR}
	@echo TARGET:$@ [should be 'test']
	@echo CFLAGS: $(CFLAGS)
	@echo LDFLAGS: ${LDFLAGS}

indent:
	@echo "indenting all code..."
	./indent-all.sh

deploy: all
	echo "fart"

clean:
	rm -f main

.PHONY: test clean all

