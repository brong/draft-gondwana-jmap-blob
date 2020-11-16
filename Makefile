

build: draft-gondwana-jmap-blob.txt draft-gondwana-jmap-blob.html draft-gondwana-jmap-blob.xml

%.xml: %.mdown
	mmark $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
