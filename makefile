install:
	@pip3 install -r requirements.txt
	install zerve /usr/bin

install-kde: | install
	mkdir -p  ~/.local/share/kdeservices5/ServiceMenu/
	install zerve.desktop ~/.local/share/kdeservices5/ServiceMenu/

uninstall:
	rm -f /usr/bin/zerve
	rm  -f ~/.local/share/kdeservices5/ServiceMenu/zerve.desktop

.PHONY : install install-kde uninstall
