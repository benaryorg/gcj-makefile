GCJ:=gcj

CLASSPATH:=src/
MAINCLASS:=main.Main

JFLAGS:=--classpath=$(CLASSPATH)

SRCS=$(shell find $(CLASSPATH) -iname '*.java')
OBJS=$(addprefix build/,$(addsuffix .class,$(basename $(SRCS:$(CLASSPATH)%=%))))
CLSS=$(addprefix build/,$(addsuffix .o,$(basename $(SRCS:$(CLASSPATH)%=%))))

