#!/bin/bash
 echo "Which dotfiles would you like to install?"
 echo -n "Your choices are:"
 ls -d */
 read input_var
 stow -S $input_var -t $HOME
