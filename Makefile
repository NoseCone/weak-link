all: build/index.html

build/index.html: css
	mkdir -p build && ./css.exe /Css/main > build/site.html
	sed -e '1,/^\r\{0,1\}$$/d' build/site.html > $@

css:
	urweb css -protocol static

clean:
	rm -f build/index.html
	rm -f css.exe

www: build/index.html
	cd build && python3 -m http.server
