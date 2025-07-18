# 📟 📥 terminal-drawer.vim
The purpose of this plugin is quite simple: use `<C-t>` or any key mapping to toggle terminal. 

Most time, you just need a terminal to run a single command like a `make`. But you need to:
- `:term` to open a terminal
- `<C-w>:hid` to hidden the terminal Or bare it use some of you coding space
- remember the buffer number of terminal OR use some tools like fzf to search buffer
- `:sp {bufnr}` to find back you terminal
Now you can do with only one key mapping you chosen.

## 🔌 Requirements

Vim/NeoVim with terminal feature

## 🚀 Installation

vim-plug
```
Plug 'iaalm/terminal-drawer.vim'
```

packer.nvim
```
use 'iaalm/terminal-drawer.vim'
```

dein.nvim
```
call dein#add('iaalm/terminal-drawer.vim')
```

## ⚡️ Usage

Use `Ctrl-t` to open a terminal. If any terminal already opened, switch to it. If you're focuing on one, hidden it.

## 🎛️ Options

```vim
" Change your shell. This is useful if the variable "shell" is used by too many plugins.
let g:terminal_drawer_shell = "zsh"

" Change the binding to another one, if you need <C-t> for other thing.
let g:terminal_drawer_leader = "<C-s>"

" Change the terminal postion "bottom" or "top"
let g:terminal_drawer_position = "bottom"

" Change the terminal size
let g:terminal_drawer_size = 20
```

## 💡 Acknowledge

Inspired by [quick-terminal.vim](https://gist.github.com/shivamashtikar/16a4d7b83b743c9619e29b47a66138e0)
