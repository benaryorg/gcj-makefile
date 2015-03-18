include config.mk

default: help

help:
	echo either use target jar or bin.

all: jar bin

jar: $(CLSS)
	@cd build;mkdir -p META-INF/;echo "Main-Class: $(MAINCLASS)" > META-INF/MANIFEST.MF;zip -ru ../dist/main.jar *

bin: $(OBJS)
	$(GCJ) $(JFLAGS) --main=$(MAINCLASS) -o dist/main $^

build/%.o: src/%.java
	@mkdir -p $(dir $@)
	$(GCJ) $(JFLAGS) -c $^

build/%.class: src/%.java
	@mkdir -p $(dir $@)
	$(GCJ) $(JFLAGS) -C -d build/ $^

.PHONY: clean

clean:
	rm -rf build/*

