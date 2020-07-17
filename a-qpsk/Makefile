all: qpsk1.svg qpsk2.svg qpsk3.svg qpsk4.svg

qpsk1.svg qpsk2.svg qpsk3.svg qpsk4.svg: qpsk.asy
	asy -tex context qpsk.asy

.PHONY: clean
clean:
	$(RM) qpsk*.svg
