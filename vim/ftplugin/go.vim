" Don't display list chars
set nolist

" softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>f :<C-u>call go#fmt#Format(-1)<CR>
au FileType go nmap <leader>i :<C-u>call go#fmt#Format(1)<CR>
