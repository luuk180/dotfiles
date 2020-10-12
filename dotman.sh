#!/usr/bin/env bash
#Very much WIP

init_check() {
	# Check if it's the first time use
	if [[ -z ${DOT_REPO} && -z ${DOT_DEST} ]]; then
		# show first time menu
		# initial_setup
	else
		# repo_check
		# manage
		# use stow to place the dotfiles
	fi
}

initial_setup() {
	echo -e "\n\nFirst time use, setting up"
	echo -e "................................\n"
	read -p "Enter dotfiles repo URL : " -r DOT_REPO

	read -p "Where do I clone $(basename "${DOT_REPO}") (${HOME}/..): " -r DOT_DEST
	DOT_DEST=${DOT_DEST:-$HOME}
}
