all: index.html

index.html: css
	./css.exe /Css/main > index.html

css:
	urweb css -protocol static

clean:
	rm -f index.html
	rm -f css.exe

www: index.html
	python3 -m http.server
