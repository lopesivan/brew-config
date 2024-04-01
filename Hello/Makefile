RECIPE=Hello
PKGNAME=hello
VERSION=2.12
REPO=http://192.168.2.43:8899/my_gnu/$(PKGNAME)-$(VERSION).tar.gz
install:
	brew $@ $(RECIPE)
uninstall:
	brew $@ $(RECIPE)

build-local:
	wget $(REPO)
	tar xvzf $(PKGNAME)-$(VERSION).tar.gz
	( cd $(PKGNAME)-$(VERSION); \
		./configure --disable-dependency-tracking --disable-silent-rules; \
		make; \
	)

clean:
	rm -rf $(PKGNAME)-$(VERSION).tar.gz
	rm -rf $(PKGNAME)-$(VERSION)

recipes:
	hub clone my_recipes
