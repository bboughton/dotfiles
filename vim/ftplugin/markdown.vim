set textwidth=70
set colorcolumn=70
set formatoptions+=t

set formatprg=pandoc\ -f\ markdown\ -t\ markdown\ --reference-links\ --columns=70

let g:markdown_fenced_languages = ['ruby']
