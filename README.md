# Terminal-based Dev Environment for Solidity & Go
## Includes ...
1. vim-go bundle: a complete IDE for golang development, including highlight, auto complete, nerd tree filebrowsing, etc.
2. vim solidity syntax highlightng & syntax check
3. various vim tweaks, plugins (nerdtree, tagbar, auto complete, airline status bar, etc.) and color (default is "hybrid" colorscheme)
4. tmux configuration

## Cheatsheet
[See here](/cheatsheet.md "Cheatsheet")

## Screenshot
Editing GO file with split screen (tmux)
![Coding in GO](/screenshot.png?raw=true "Coding in GO")

Solidity:  highlighting & Syntax check
![Solidity Highlighting & Syntax check](/screenshot-solidity-syntaxcheck.png?raw=true "Solidity")

GO: Auto complete
![GO Auto complete](/screenshot-go-autocomplete.png?raw=true "Coding in GO")

GO: Auto Syntax Check
![GO Syntax Check](/screenshot-go-syntaxcheck.png?raw=true "Coding in GO")

## Installation
0. Git clone the repository and change directory to it
1. Tmux Setup
 
If your tmux file is empty, you could simply copy / overwrite it:
    cp tmux.conf ~/.tmux.conf

2. Copy vim bundle

    cp -R vim_runtime ~/.vim_runtime

3. Add to your vim init file

If you don't want to overwrite your existing vim config, you could simply concatenate it:

    cat vimrc ~/.vimrc

4. (Optional) Color theme

    mkdir -p ~/.vim/colors

    cp -R colors/* ~/.vim/colors


