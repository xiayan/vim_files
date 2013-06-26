execute pathogen#infect()
execute pathogen#helptags()

set number
set ruler

"list chars
set list
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
set listchars+=precedes:<         " The character to show in the last column when wrap is

" Set up file omnifunctions
filetype on
filetype indent on
filetype plugin on
set ofu=syntaxcomplete#Complete
set autoread

" Leave the vim content on screen after quiting vim
set t_ti= t_te=
let &winheight = &lines * 7 / 10

map <space> /
map <leader><space> ?
map <silent> <leader><cr> :noh<cr>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"Move tabs
nnoremap g<Left> gT
nnoremap g<Right> gt


" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"Mapping for quick directory change
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Shortcut for ctags
map <C-C><C-T> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols='fancy'

"TaskList
map <leader>ta <Plug>TaskList

"NerdTree
map <leader>nn :execute 'NERDTreeToggle ' . getcwd()<CR>

"TagList
map <leader>tl :execute 'TlistToggle '<CR><C-W><Left><BS>

"Ident_Guide
let g:indent_guides_guide_size=1

"WinManager
map <leader>wm :execute 'WMToggle'<CR>
let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:winManagerWidth = 30
let g:winManagerAutoOpen = 0
let g:winManagerOnRightSide = 1
let g:persistentBehaviour = 0

"EasyTags
let g:easytags_updatetime_min=3000

color solarized

set nocompatible
set laststatus=2
set encoding=utf-8

syntax enable
set background=dark
set linespace=-1

"ctag update time
set updatetime=4000
set tm=600

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

set foldmethod=syntax
set foldlevel=99

" Linebreak on 500 characters
set lbr
set tw=500

set autoindent "Auto indent
set wrap "Wrap linep

set hlsearch
set incsearch
set showmatch
set magic
set ignorecase

set smartcase
set mouse=a
set wildmenu
set wildignore=*.o,*~,*.pyc,*.class
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> <c-E> :wincmd =<CR>

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

if has("autocmd")
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType java set omnifunc=javacomplete#Complete
endif
let g:SuperTabDefaultCompletionType = "context"

"CommandT
nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b: CommandTBuffer<CR>

"a.vim
nmap <leader>aa :A<CR>
nmap <leader>as :AS<CR>
nmap <leader>av :AV<CR>

"delimitMate
let delimitMate_expand_space=1
let delimitMate_expand_cr=1
" imap <expr><CR> SuperTab('n') ? "\<C-n>" : "<Plug>delimitMateCR"
