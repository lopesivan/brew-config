SHELL        = /bin/bash
HOMEBREWHOME = /home/linuxbrew/.linuxbrew
LIBRARY      = $(HOMEBREWHOME)/Homebrew/Library
SUPER        = $(LIBRARY)/Homebrew/shims/linux/super
OFFFLAG      = $(SUPER)/.OFF
MY_RECIPES   = my_recipes2
MY_PATCHES   = my_patches

all: update

hub:
	hub clone $(REPO)

config: $(REPO)
	@(cd $(REPO); bash ../etc/brew.config.sh $(REPO) $(VERSION) ) > data.repo

init: hub config
	@bold=$$(tput bold); \
		bg_blue=$$(tput setab 4); \
		bg_red=$$(tput setab 1); \
		reset=$$(tput sgr0); \
		echo "Realize as modificações em $$bold$$bg_blue $(REPO) $$reset e commite" ; \
		echo "Ao final faça:$$bold$$bg_red make deploy $$reset"

deploy: diff upload_diff new_recipes upload_recipes update
original: version recipes upload_original update install

version: recipe/$(RECIPE).rb
	sed "s/version '.*'$$/version '$(VERSION)'/" -i recipe/$(RECIPE).rb

install:
	brew $@ $(RECIPE)
uninstall:
	brew $@ $(RECIPE)

clone:
	@bold=$$(tput bold); \
	bg_yellow=$$(tput setab 3); \
	reset=$$(tput sgr0); \
	echo "$$bold$$bg_yellow Clonando repositório $$reset"; \
	. ./data.repo; \
	git clone $$REMOTE_REPO; \
	echo "$$bold$$bg_yellow Agora realize as mudancas $$reset"


diff: $(REPO)
	@bold=$$(tput bold); \
	bg_blue=$$(tput setab 4); \
	reset=$$(tput sgr0); \
	echo "$$bold$$bg_blue Cria o arquivo diff $$reset"; \
	bash ./etc/brew.hello.1.sh

upload_diff: patches
	@bold=$$(tput bold); \
	bg_blue=$$(tput setab 4); \
	reset=$$(tput sgr0); \
	echo "$$bold$$bg_blue Upload o arquivo diff $$reset"; \
	bash ./etc/brew.hello.2.sh

new_recipes:
	@bold=$$(tput bold); \
	bg_blue=$$(tput setab 4); \
	reset=$$(tput sgr0); \
	echo "$$bold$$bg_blue Cria novo recipes $$reset"; \
	bash ./etc/brew.hello.3.sh

upload_recipes: recipes
	@bold=$$(tput bold); \
	bg_blue=$$(tput setab 4); \
	reset=$$(tput sgr0); \
	echo "$$bold$$bg_blue Upload recipes $$reset"; \
	bash ./etc/brew.hello.4.sh; \
	echo "$$bold$$bg_blue brew update $$reset"; \
	echo "$$bold$$bg_blue brew upgrade $$reset"

upload_original:
	@bold=$$(tput bold); \
	bg_blue=$$(tput setab 4); \
	reset=$$(tput sgr0); \
	echo "$$bold$$bg_blue Upload original recipes $$reset"; \
	bash ./etc/brew.hello.5.sh; \
	echo "$$bold$$bg_blue Não esqueça: $$reset"; \
	echo "$$bold$$bg_blue brew update $$reset"; \
	echo "$$bold$$bg_blue brew upgrade $$reset"


update:
	bash ./etc/$@-brew.sh
upgrade:
	bash ./etc/$@-brew.sh

clean:
	(source ./data.repo; rm -rf $${REPO_NAME})
	rm -rf a b  *.diff
	rm -rf $(MY_PATCHES) $(MY_RECIPES) my_recipes
	rm $(RECIPE).rb

recipes:
	@if [ -d my_recipes ]; then \
		echo "Removendo pasta my_recipes existente..."; \
		rm -rf my_recipes; \
	fi
	hub clone $(MY_RECIPES)
	mv $(notdir $(MY_RECIPES)) my_recipes

patches:
	hub clone $(MY_PATCHES)
