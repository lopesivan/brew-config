#!/usr/bin/env bash

OFF_FLAG=$(brew --prefix)/Homebrew/Library/Homebrew/shims/linux/super/.OFF

if test -e $OFF_FLAG; then
	echo "abortando: .OFF existe" >&2
	return
else
	brew update
	brew upgrade
fi
