command! -bang -nargs=0 ToggleTerminalDrawer call terminal_drawer#ToggleTerminal()

" maybe a differnt key mapping
let s:leader = get(g:, 'terminal_drawer_leader', '<C-t>')
execute 'map ' . s:leader . ' :ToggleTerminalDrawer<CR>'
if has('nvim')
  execute 'tmap ' . s:leader . ' <C-\><C-N>:ToggleTerminalDrawer<CR>'
else
  execute 'tmap ' . s:leader . ' <C-W>:ToggleTerminalDrawer<CR>'
endif
