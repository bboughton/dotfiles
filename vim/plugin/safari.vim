function! ReloadSafari()
  wall
  execute ":silent !reload-safari"
  redraw!
endfunction

nmap <Leader>rl :call ReloadSafari()<CR>
