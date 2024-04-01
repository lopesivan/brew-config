#!/usr/bin/env bash

OFF_FLAG=$(brew --prefix)/Homebrew/Library/Homebrew/shims/linux/super/.OFF

if test -e $OFF_FLAG; then
	echo "abortando: .OFF existe" >&2
	echo faca:
	echo make -C $(brew --prefix)
	exit 42
else
	brew update
	brew upgrade
fi
