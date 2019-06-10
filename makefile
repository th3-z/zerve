install:
	pip3 install -r requirements.txt
	install zerve /usr/bin

install-kde install:
	mkdir -p  ~/.local/share/kdeservices5/ServiceMenu/
	install zerve.desktop ~/.local/share/kdeservices5/ServiceMenu/

uninstall:
	rm /usr/bin/zerve

