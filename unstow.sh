#!/bin/bash
 echo "Which dotfiles would you like to remove?"
 echo -n "Your choices are:"
 ls -d */
 read input_var
 stow -D $input_var -t $HOME
