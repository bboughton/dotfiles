function! FormatMarkdown()
	if &filetype == 'markdown'
		normal mzgggqG`z
	endif
endfunction

augroup filetype_markdown
	autocmd!
	autocmd FileType markdown autocmd BufWritePre <buffer> call FormatMarkdown()
augroup end
