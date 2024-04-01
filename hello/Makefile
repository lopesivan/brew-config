SHELL=/bin/bash
REPO=hello
RECIPE=hello_brew
install:
	brew $@ $(RECIPE)
uninstall:
	brew $@ $(RECIPE)
clone:
	(source ./data.repo; git clone $${REMOTE_REPO})
step1: clone
	@echo o download do repositório foi realizado, agora realize as mudancas| fmt -w 68
step2:
	bash ./brew.hello.sh
clean:
	(source ./data.repo; rm -rf $${REPO_NAME})
	rm -rf a b  *.diff
recipes:
	hub clone my_recipes
