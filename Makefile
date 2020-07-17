all: buildall

.PHONY: buildall clean


buildall:
	for i in a-*;do cd $$i;make;cd ..;done

clean:
	for i in a-*;do cd $$i;make clean;cd ..;done
	$(RM) -r public

.PHONY: clean pages

pages:
	mkdir -p public
	cp index.html public
	-find -iname '*asy'|grep -v "^[.]/public"|xargs cp -t public
	-find -iname '*svg'|grep -v "^[.]/public"|xargs cp -t public
	-find -iname '*pdf'|grep -v "^[.]/public"|xargs cp -t public
	-find -iname '*gif'|grep -v "^[.]/public"|xargs cp -t public

base_dir := $(shell pwd)

get-fonts:
	mkdir -p fonts
	cd fonts && \
	wget -c "http://www.exljbris.com/dl/fontin2_pc.zip" && \
	unzip -o fontin2_pc.zip && \
	wget -c "http://www.exljbris.com/dl/delicious-123.zip" && \
	unzip -o delicious-123.zip && \
	wget -c https://github.com/khaledhosny/euler-otf/raw/master/euler.otf && \
	OSFONTDIR=$(base_dir)/fonts/ mtxrun --script fonts --reload && \
	cd ..
