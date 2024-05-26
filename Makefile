all: build/index.html

build/index.html: site
	mkdir -p build && ./site.exe /Site/main > build/site.html
	sed -e '1,/^\r\{0,1\}$$/d' build/site.html > $@

site:
	urweb site -protocol static

clean:
	rm -f build/index.html
	rm -f site.exe

www: build/index.html
	cd build && python3 -m http.server
