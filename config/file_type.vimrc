
" suppresses files edited by the godot editor
au FocusGained,BufEnter *.gd :silent! !
au focusLost,WinLeave *.gd :silent! noautocmd w

" convert tabs to spaces, which are being turned into tabs by godot for some
" reason 
au FocusGained,BufEnter *.gd :retab 

autocmd BufEnter *.ts :setlocal filetype=javascriptreact
au filetype javascriptreact
    \ set tabstop=4
    \| set softtabstop=4 
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

autocmd BufEnter *.ts :setlocal filetype=scheme
au filetype scheme
    \ set tabstop=4
    \| set softtabstop=4 
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix
    \| set nolisp
    \| set nosmartindent

filetype plugin indent on
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

