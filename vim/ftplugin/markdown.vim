set textwidth=70
set colorcolumn=70
set formatoptions+=t

set formatprg=pandoc\ -f\ markdown_github-hard_line_breaks+pipe_tables\ -t\ markdown_github-hard_line_breaks+pipe_tables\ --reference-links\ --columns=70

let g:markdown_fenced_languages = ['ruby']
