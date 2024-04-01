SHELL=/bin/bash
REPO=hello
RECIPE=hello@42

all: update

set:
	make -C /home/linuxbrew/.linuxbrew

install:
	brew $@ $(RECIPE)
uninstall:
	brew $@ $(RECIPE)

clone:
	echo `tput bold tput setb 3`Clonando repositório `tput sgr0`
	(source ./data.repo; git clone $${REMOTE_REPO})
	echo `tput bold tput setb 3`Agora realize as mudancas `tput sgr0`

deploy: diff upload_diff new_recipes upload_recipes update

diff: $(REPO)
	echo `tput bold tput setb 3`Cria o arquivo diff `tput sgr0`
	bash ./etc/brew.hello.1.sh

upload_diff:
	echo `tput bold tput setb 3`Upload o arquivo diff `tput sgr0`
	bash ./etc/brew.hello.2.sh

new_recipes:
	echo `tput bold tput setb 3`Cria novo recipes `tput sgr0`
	bash ./etc/brew.hello.3.sh

upload_recipes:
	echo `tput bold tput setb 3`Upload recipes `tput sgr0`
	bash ./etc/brew.hello.4.sh
	echo `tput bold tput setb 4`brew update`tput sgr0`
	echo `tput bold tput setb 4`brew upgrade`tput sgr0`

upload_original:
	echo `tput bold tput setb 3`Upload original recipes `tput sgr0`
	bash ./etc/brew.hello.5.sh
	echo `tput bold tput setb 3`Não esqueça:`tput sgr0`
	echo `tput bold tput setb 4`brew update`tput sgr0`
	echo `tput bold tput setb 4`brew upgrade`tput sgr0`

update:
	bash ./etc/update-brew.sh

clean:
	(source ./data.repo; rm -rf $${REPO_NAME})
	rm -rf a b  *.diff
	rm -rf my_patches my_recipes

recipes:
	hub clone my_recipes
