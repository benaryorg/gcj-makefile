include config.mk

default: all

all: build/main

build/main: $(OBJS)
	@mkdir -p dist/;cd build;mkdir -p META-INF/;echo "Main-Class: $(MAINCLASS)" > META-INF/MANIFEST.MF;zip -ru ../dist/main.jar *

build/%.class: src/%.java
	@mkdir -p $(dir $@)
	$(JAVAC) $(JFLAGS) $^

.PHONY: clean

clean:
	rm -rf build/

