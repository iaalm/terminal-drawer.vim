function terminal_drawer#ToggleTerminal() abort
  let termNums = term_list()
  let termWins = filter(getwininfo(), 'v:val.terminal')
  let hiddenNums = map(getbufinfo({'hidden': 1}), 'v:val.bufnr')
  let currentBufNum = bufnr('%')
  if index(termNums, currentBufNum) >= 0
      " current buffer is terminal, hide it
      execute 'hid'
  elseif len(termWins) > 0
      " there is a terminal buffer, show it
      execute 'tabn' . termWins[0].tabnr
      execute termWins[0].winnr . 'wincmd w'
  elseif len(termNums) > 0
      " the terminal buffer is hidden, show it
      execute 'sb ' . termNums[0]
  else
      " no terminal buffer, create one
      let cmd = get(g:, 'terminal_drawer_shell', '')
      execute 'term ' . cmd
  endif
endfunction

