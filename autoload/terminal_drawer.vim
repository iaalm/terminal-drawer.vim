function terminal_drawer#AdjustPostion() abort
    let l:pos = get(g:, 'terminal_drawer_position', '')
    let l:size = get(g:, 'terminal_drawer_size', '')
    if l:pos == 'bottom'
        execute 'wincmd J'
    elseif l:pos == 'top'
        execute 'wincmd K'
    endif

    if l:size != ''
        execute "resize " . l:size
    endif

endfunction
function terminal_drawer#ToggleTerminal() abort
  " Just same as: let l:termNums = term_list()
  let l:termNums = filter(map(getbufinfo(), 'v:val.bufnr'), 'getbufvar(v:val, "&buftype") is# "terminal"')

  let l:termWins = filter(getwininfo(), 'v:val.terminal')
  let l:currentBufNum = bufnr('%')
  if index(l:termNums, l:currentBufNum) >= 0
      " current buffer is terminal, hide it
      execute 'hid'
  elseif len(l:termWins) > 0
      " there is a terminal buffer, show it
      execute 'tabn' . l:termWins[0].tabnr
      execute l:termWins[0].winnr . 'wincmd w'
      call terminal_drawer#AdjustPostion()
  elseif len(l:termNums) > 0
      " the terminal buffer is hidden, show it
      execute 'sb ' . l:termNums[0]
      call terminal_drawer#AdjustPostion()
  else
      " no terminal buffer, create one
      let l:cmd = get(g:, 'terminal_drawer_shell', '')
      if has('nvim')
          execute ':sp term://' . l:cmd
      else
          execute 'term ' . l:cmd
      endif
      call terminal_drawer#AdjustPostion()
  endif
endfunction

