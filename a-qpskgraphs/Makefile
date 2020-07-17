all: qpskgraphs.svg

qpskgraphs.svg: qpskgraphs.asy
	asy -tex context qpskgraphs.asy

.PHONY: clean
clean:
	$(RM) qpskgraphs.svg
