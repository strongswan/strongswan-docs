docs = $(wildcard *.adoc)
html = $(docs:.adoc=.html)

all: $(html)
.PHONY: all

%.html: %.adoc
	/usr/bin/asciidoctor $^

