command! -bang -nargs=0 ToggleTerminalDrawer call terminal_drawer#ToggleTerminal()

" maybe a differnt key mapping
map <C-t> :ToggleTerminalDrawer<CR>
tmap <C-t> <C-w>:ToggleTerminalDrawer<CR>
