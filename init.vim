set nocompatible

filetype on
filetype plugin indent on
syntax on


" General configuration
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set lazyredraw
set laststatus=2
set hidden " n files in buffer
set number " show numbers
set relativenumber " show relative number
set ruler
set mouse=a " allow mouse
set inccommand=split " interactive replace experience
set virtualedit=block
set linebreak

" Maintain undo history between sessions
set undodir=/tmp/vim-undo
set undofile

" Ignore files vim doesn't use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*



" Mapping
let mapleader="\<space>" " map space as leader key

" add ; at EOL
nnoremap <leader>; A;<esc> 

" Disable arrows
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Functions

" Removes trailing whitespaces from every line.
function! TrimTrailingWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfunction
autocmd BufWritePre <buffer> call TrimTrailingWhitespace()


" Make vim-clang-format use the .clang-format file for the styling.
let g:clang_format#detect_style_file = 1

" Do nothing when .clang-format is not found.
let g:clang_format#enable_fallback_style = 0
