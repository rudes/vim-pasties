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

## Tips and Tricks

I use both xterm on linux and putty on windows to access my development environment over SSH.
I often have text on my laptops clipboard I'd like to paste in vim but using my mouse is a pain.
However vim has a couple registers dedicated to system clipboards.
You just need to setup your environment a bit to work with the clipboards.
The registers are `"*` and `"+`

### Linux (xterm)

Use XForwarding to allow vim to access the environment properly.
In my .bashrc I added an alias.
```bash
alias ssh='ssh -X'
```
### Putty

You'll need an X11 environment, I use [X-Ming](https://sourceforge.net/projects/xming/)
then in putty you'll need to set:

Conection > SSH > X11 > Check 'Enable X11 forwarding'

Now when you run putty, start up Xming and you'll have access to your system clipboard.
