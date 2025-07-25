REPO=his
RECIPE=his@42
VERSION=1.0.0
PKGNAME=his

include ../dev.mk

build-local:
	git clone https://github.com/terroo/his
	( cd $(PKGNAME); \
		cmake . -B build; \
		cmake --build build;  \
		echo sudo cmake --install build; \
	)

clean-local:
	rm -rf $(PKGNAME)
