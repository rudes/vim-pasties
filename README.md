# Pasties

pasties is a plugin that makes pasting from a register in insert/command mode easier.
Inspired by Damian Conway

## Installation

Using [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'rudes/vim-pasties'
```
Then set your keybinds
```vim
inoremap <expr> <C-R> ShowPasties()
cnoremap <expr> <C-R> ShowPasties()
```
