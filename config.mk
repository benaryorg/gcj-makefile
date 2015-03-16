JAVAC:=gcj

CLASSPATH:=src/
MAINCLASS:=main.Main

JFLAGS:=--classpath=$(CLASSPATH) -C -d build/

SRCS=$(shell find $(CLASSPATH) -iname '*.java')
OBJS=$(addprefix build/,$(addsuffix .class,$(basename $(SRCS:$(CLASSPATH)%=%))))

