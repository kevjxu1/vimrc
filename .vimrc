syntax on
set tabstop=4
set number	" show current line number
set relativenumber	" show relative line numbers
""set ai	" set autoindent
set shiftwidth=4	" indents will have a width of 4
""set smartindent
set expandtab	"indents will be expanded to spaces
set backspace=indent,eol,start

"" shift tab
"" for command mode
nnoremap <S-Tab> <<
vnoremap <S-Tab> <
"" for insert mode
inoremap <S-Tab> <C-d>

"" tab
nnoremap <Tab> >>
inoremap <Tab> <C-t>
vnoremap <Tab> >

" disable error sounds
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" move text and rehighlight
vnoremap > ><CR>gv 
vnoremap < <<CR>gv 
vnoremap <Tab> ><CR>gv
vnoremap <S-Tab> <<CR>gv

set colorcolumn=80
"let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

:set autoindent

highlight Normal guibg=grey90

set background=dark

"nnoremap <C-t> :set invrelativenumber<CR>
nnoremap <C-t> :call ToggleLineNumbers()<CR>
let g:toggle = 2
function! ToggleLineNumbers()
    if g:toggle == 0
        let g:toggle = 1
        :set number
    elseif g:toggle == 1
        let g:toggle = 2
        :set relativenumber
    else
        let g:toggle = 0
        :set nonumber
        :set norelativenumber
    endif
endfunction
