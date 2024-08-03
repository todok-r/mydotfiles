#!/bin/bash

ALIAS="alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'"
if ! grep -E "${ALIAS}" ~/.bashrc > /dev/null 2>&1; then
	echo "${ALIAS}" >> ~/.bashrc
fi

function _config {
	/usr/bin/git --git-dir="$HOME/.cfg/" --work-tree="$HOME" "$@"
}

_config checkout
_config config status.showUntrackedFiles no
