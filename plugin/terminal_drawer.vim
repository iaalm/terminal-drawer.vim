command! -bang -nargs=0 ToggleTerminalDrawer call terminal_drawer#ToggleTerminal()

" maybe a differnt key mapping
let s:leader = get(g:, 'terminal_drawer_leader', '<C-t>')
execute 'map ' . s:leader . ' :ToggleTerminalDrawer<CR>'
execute 'tmap ' . s:leader . ' <C-w>:ToggleTerminalDrawer<CR>'
