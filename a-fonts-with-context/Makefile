all: fonttest2.svg

fonttest2.svg: fonttest2.asy
	asy -tex context fonttest2.asy

.PHONY: clean
clean:
	$(RM) fonttest2.svg
