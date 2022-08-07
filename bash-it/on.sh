#!/usr/bin/env bash

p=(
android arduino brew dart ghcup goenv gradle groovy jbang jenv luaenv ndenv pandoc perl5 pyenv rakudobrew rbenv roo rustup wolfram
)
a=(
developer general mutt redis tmux vim wine xclip
)
c=(
bash-it brew cargo cht docker-compose docker-machine flutter git_flow github-cli iprj tldr tmuxinator ttjava wd xp
)

BASH_IT="$(brew --prefix)/opt/bash-it"
source "$BASH_IT"/bash_it.sh

bash-it enable plugin ${p[@]}
bash-it enable alias ${a[@]}
bash-it enable completion ${c[@]}

