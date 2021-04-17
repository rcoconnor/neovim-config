"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"highlight extra whitespace
":highlight ExtraWhitespace ctermbg=red guibg=red
":match ExtraWhitespace /\s\+$/

" Color Scheme
colo palenight

" enable deoplete at startup 
let g:deoplete#enable_at_startup = 1 
let g:deoplete#enable_ignore_case = 1
"let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"close preview window on leaving the insert mode
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif 


"code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


" Remap expand trigger so it isn't <Tab>
let g:UltiSnipsExpandTrigger='<C-j>'

"Linting 
" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
" I have some custom icons for errors and warnings but feel free to change them.
let g:ale_sign_error = '✘✘'
let g:ale_sign_warning = '⚠⚠'

" Disable or enable loclist at the bottom of vim 
" Comes down to personal preferance.
"let g:ale_open_list = 0
"let g:ale_loclist = 0

" Setup compilers for languages

let g:ale_linters = {
      \  'cs':['syntax', 'semantic', 'issues'],
      \  'python': ['pylint'],
      \  'java': ['javac']
      \ }


" Configure ale with habamax/vim-godot
"call ale#linter#Define('gdscript', {
"\   'name': 'godot',
"\   'lsp': 'socket',
"\   'address': '127.0.0.1:6008',
"\   'project_root': 'project.godot',
"\})

" Java completion
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"autocmd FileType java JCEnable

:tnoremap <Esc> <C-\><C-n>


