

build: draft-ietf-jmap-blob.txt draft-ietf-jmap-blob.html draft-ietf-jmap-blob.xml

%.xml: %.mdown
	mmark $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
