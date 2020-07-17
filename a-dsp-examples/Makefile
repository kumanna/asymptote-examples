all: fourier.svg

fourier.svg: fourier.asy
	asy -tex context fourier.asy

.PHONY: clean
clean:
	$(RM) fourier.svg
