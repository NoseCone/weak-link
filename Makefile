index.html: site.html
	sed -e '1,/^\r\{0,1\}$$/d' site.html > $@
