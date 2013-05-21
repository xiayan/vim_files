set nocompatible
set laststatus=2
set encoding=utf-8
syntax enable

if has("gui_running")
    "colorscheme github
    colorscheme Tomorrow-Night-Eighties
    set columns=82
else
    set t_Co=256
    "colorscheme github_console
    colorscheme Tomorrow-Night-Eighties
endif

"set guifont=Monaco:h12
"set guifont=Lucida\ Sans\ Typewriter\ Regular\ for\ Powerline:h13
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
"set scrolloff=1000
"set clipboard=unnamed

" Cursor setup
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline!
map <silent> <leader>cl :set cursorline!<CR>
map <silent> <leader>cc :set cursorcolumn!<CR>
set gcr=n:blinkon0

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set foldmethod=indent
set foldlevel=99

" Linebreak on 500 characters
set lbr
set tw=500

set autoindent "Auto indent
set smartindent "Smart indent
set wrap "Wrap lines

set hlsearch
map <silent> <leader><cr> :noh<cr>
set incsearch
set showmatch
set magic

set number
set cindent

set ignorecase
set smartcase
set ruler
set wildmenu
set wildignore=*.o,*~,*.pyc,*.class

filetype indent on
filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete
set autoread

" Fast saving
nmap <leader>w :w!<cr>

au BufNewFile,BufRead *.m set filetype=octave
au BufNewFile,BufRead *.jack set filetype=jack
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.cl set filetype=cool
au BufNewFile,BufRead \..* if &syntax == '' | set syntax=python | endif
au BufNewFile,BufRead [.][a-zA-Z][a-zA-Z]* if &syntax == '' | set syntax=python | endif

call pathogen#infect()

"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}

"inoremap        (  ()<Left>
"inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

map <leader>nn :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>tl :execute 'TlistToggle '<CR><C-W><Left><BS>
map <leader>f :execute 'FufFile'<CR>

nnoremap g<Left> gT 
nnoremap g<Right> gt

"System clipboard " On OSX
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"vmap <C-c> :w !pbcopy<CR><CR><BS> 

map <space> /
map <leader><space> ?

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Line traversal in Insertion Mode
inoremap <leader>ii <Esc>I
inoremap <leader>aa <Esc>A
inoremap <leader>oO <Esc>O
inoremap <leader>oo <Esc>o
inoremap <leader>cc <Esc>C
inoremap <leader>ss <Esc>S
inoremap <leader>dd <Esc>ddi
inoremap <leader>uu <Esc>ui
inoremap <leader>00 <Esc><C-v>i)s

" Omni Completion
imap <leader><Tab> <c-x><c-o>

" Center screen on next/previous selection.
"nnoremap n nzz
"nnoremap N Nzz
" Last and next jump should center too.
"nnoremap <C-o> <C-o>zz
"nnoremap <C-i> <C-i>zz
"nnoremap <C-]> <C-]>zz

"Mapping for quick directory change
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

if has("autocmd")
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType java set omnifunc=javacomplete#Complete
    autocmd BufNewFile,BufRead *.json set ft=json
endif
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
""let Powerline_symbols = 'fancy'

"Ident_Guide
let g:indent_guides_guide_size=1

"WinManager
function ToggleWM()
    :execute 'WMToggle'
    if has("gui_running") && IsWinManagerVisible()
        let colm=winwidth(1) + 60
        execute 'set columns='.colm
    elseif has("gui_running") && !IsWinManagerVisible()
        let colm=winnr('$')
        if colm == 1
            let colm=82
        else
            let colm=(colm-1)*64
        endif
        execute 'set columns='.colm
    endif
    :setlocal winfixheight
    :wincmd =
    :wincmd h
endfunction

let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:winManagerWidth = 30
map <leader>wm :execute ToggleWM()<CR>
let g:winManagerAutoOpen = 0 
let g:winManagerOnRightSide = 1
let g:persistentBehaviour = 0
map <C-w>F :FirstExplorerWindow<CR>
map <C-w>B :BottomExplorerWindow<CR>

"Open counterparts
function AVSplit()
    :set columns=128
    :AV
    :setlocal winfixheight
    :wincmd =
endfunction

nmap <leader>aa :A<CR>
nmap <leader>as :AS<CR>
nmap <leader>av :execute AVSplit()<CR>

