set nocompatible
set laststatus=2
set encoding=utf-8

execute pathogen#infect()
execute pathogen#helptags()

syntax enable

let g:solarized_bold = 0
let g:solarized_italic = 1
"let g:solarized_hitrail = 1
call togglebg#map("<F6>")
colorscheme solarized

"set background according to time of the day
if strftime("%H") >= 7 && strftime("%H") < 19
    "colorscheme github
    set background=light
else
    set background=dark
endif

set linespace=-1

"ctag update time
set updatetime=4000
set tm=500

if has("gui_running")
    set columns=88
endif

"set guifont=Lucida\ Sans\ Typewriter\ Regular\ for\ Powerline:h13
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
"set scrolloff=1000
set clipboard=unnamed

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
set mouse=a
set wildmenu
set wildignore=*.o,*~,*.pyc,*.class

filetype indent on
filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete
set autoread

" Fast saving
"nmap <Esc><Esc> :w!<cr>
"imap <Esc><Esc> <Esc>:w!<cr>i

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

"FileType and OmniCompletion
au BufNewFile,BufRead *.m set filetype=octave
au BufNewFile,BufRead *.jack set filetype=jack
let g:python_highlight_all = 1
au BufNewFile,BufRead *.cl set filetype=cool
au BufNewFile,BufRead \..* if &syntax == '' | set syntax=python | endif
au BufNewFile,BufRead [.][a-zA-Z][a-zA-Z]* if &syntax == '' | set syntax=python | endif

set ofu=syntaxcomplete#Complete
if has("autocmd")
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType java set omnifunc=javacomplete#Complete
endif
let g:SuperTabDefaultCompletionType = "context"

set nocp
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

map <C-C><C-T> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

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

"Remap TaskList binding to use Command-T
map <leader>ta <Plug>TaskList

let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:winManagerWidth = 30
"map <leader>wm :execute ToggleWM()<CR>
map <leader>wm :execute 'WMToggle'<CR>
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
nmap <leader>av :AV<CR>
"nmap <leader>av :execute AVSplit()<CR>
