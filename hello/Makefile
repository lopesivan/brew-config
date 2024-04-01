SHELL=/bin/bash
REPO=hello
RECIPE=hello_brew
install:
	brew $@ $(RECIPE)
uninstall:
	brew $@ $(RECIPE)

clone:
	echo `tput bold tput setb 3`Clonando repositório `tput sgr0`
	(source ./data.repo; git clone $${REMOTE_REPO})
	echo `tput bold tput setb 3`Agora realize as mudancas `tput sgr0`

step1: $(REPO)
	echo `tput bold tput setb 3`Cria o arquivo diff `tput sgr0`
	bash ./etc/brew.hello.1.sh

step2:
	echo `tput bold tput setb 3`Upload o arquivo diff `tput sgr0`
	bash ./etc/brew.hello.2.sh

step3:
	echo `tput bold tput setb 3`Cria novo recipes `tput sgr0`
	bash ./etc/brew.hello.3.sh

step4:
	echo `tput bold tput setb 3`Upload recipes `tput sgr0`
	bash ./etc/brew.hello.4.sh

step5:
	echo `tput bold tput setb 3`Upload original recipes `tput sgr0`
	bash ./etc/brew.hello.4.sh

clean:
	(source ./data.repo; rm -rf $${REPO_NAME})
	rm -rf a b  *.diff
	rm -rf my_patches my_recipes

recipes:
	hub clone my_recipes
