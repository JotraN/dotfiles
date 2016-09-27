execute pathogen#infect()

syntax on
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set foldmethod=indent
set laststatus=0
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
scriptencoding utf-8
set encoding=utf-8
set expandtab

autocmd FileType python setlocal foldmethod=indent smartindent shiftwidth=4 ts=4 et cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType ruby setlocal foldmethod=indent smartindent shiftwidth=2 ts=2 expandtab
autocmd FileType html setlocal foldmethod=indent smartindent shiftwidth=2 ts=2 expandtab
autocmd FileType css setlocal foldmethod=indent smartindent shiftwidth=2 ts=2 expandtab
autocmd FileType javascript setlocal foldmethod=indent smartindent shiftwidth=2 ts=2 expandtab
autocmd BufNewFile,BufRead *.html.erb set filetype=html

filetype plugin indent on
set autoindent

" Backup files
if has("vms")
	set nobackup
else
	set backup
endif

set t_Co=256

color koehler

" Compile and run
nnoremap <F6> :call CompileAndRun()<Return>
function! CompileAndRun()
if &filetype == "java"
	:! javac % && java %:r
elseif &filetype == "python"
	:! python %
elseif &filetype == "cpp"
	:! g++ % -o test && ./test
endif
endfunction

" Autoreload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

hi StartifyHeader ctermfg=150
let g:startify_custom_header = [
								\'   I am the stone that the builder refused',
								\'   I am the visual, the inspiration',
								\'   That made Lady sing the blues',
								\'',
								\'   I''m the spark that makes your idea bright',
								\'   The same spark that lights the dark',
								\'   So that you can know your left from your right',
								\'',
								\'   I am the ballot in your box, the bullet in the gun',
								\'   The inner glow that lets you know to call your brother son',
								\'   The story that just begun, the promise of what''s to come',
								\'   And I''mma remain a soldier till the war is won', '']

" Space Leader
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
