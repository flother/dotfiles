set lines=49 columns=140
nnoremap <M-D-Right> :bn<CR>
nnoremap <M-D-Left> :bp<CR>
set guifont=Monaco:h12
set guioptions-=L

let g:flake8_show_in_gutter=1
autocmd BufWritePost *.py call Flake8()
