" change the shell to sh (so POSIX compliant) when launching vim from fish
if &shell =~# 'fish$'
    set shell=zsh
endif

call plug#begin('~/.config/nvim/plugged')
    Plug 'chrisbra/Colorizer'
        let g:colorizer_use_virtual_text = 1
    Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
    Plug 'tpope/vim-unimpaired'
        nmap < [
        nmap > ]
        omap < [
        omap > ]
        xmap < [
        xmap > ]   
    "checking if this works as a plugin
    "Plug 'kmarius/vim-fish'  
    Plug 'frazrepo/vim-rainbow'
        "au FileType c,cpp,objc,objcpp call rainbow#load()
        let g:rainbow_active = 1
call plug#end()

"set hidden
syntax enable
set number relativenumber  "hibrid mode (absolute and relative line numbers)                    
set colorcolumn=88
set scrolloff=999  "hack to always have the cursor centered
set termguicolors  "truecolor in terminal

colorscheme jellybeans
let g:jellybeans_use_term_italic = 1
"let g:jellybeans_overrides = { 'background': { 'ctermbg': 'none', '256ctermbg': 'none' }, }
"if has('termguicolors') && &termguicolors
"    let g:jellybeans_overrides['background']['guibg'] = 'none'
"endif

"colorscheme monokai
"let g:monokai_term_italic = 1  " parece que no es necesario
"
"colorscheme goodwolf
"colorscheme badwolf

"filetype plugin indent on

set clipboard=unnamed "selection goes to system registry
"autocmd BufEnter * silent! !setxkbmap --option caps::escape
"autocmd BufLeave * silent! !setxkbmap --option caps:caps


"imap <Tab> <C-P>

" check this options 
"
"set pastetoggle=<F10>

set tabstop=4       " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

"set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
"set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw only when need to
"set showmatch           " highlight matching [{()}]

set ignorecase          " case-insensitive search until a capital letter is used
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
"nnoremap <leader><space> :nohlsearch<CR>

" highlight last inserted text
"nnoremap gV `[v`]

" Go to the last cursor location when a file is opened, unless this is a
" git commit (in which case it's annoying)
au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit" |
        \ execute("normal `\"") |
    \ endif
