" Disable snipmate as it messes with the <Tab> key
let g:pathogen_disabled = ['snipmate', 'colorsupport', 'winmanager',
            \'python_fn']

execute pathogen#infect()
execute pathogen#helptags()

set number
set ruler
set colorcolumn=80

"list chars
set list
set listchars=""           " Reset the listchars
set listchars=tab:\ \      " trailing whitespace as "."
set listchars+=trail:.     " show trailing spaces as dots
set listchars+=extends:>
" The character to show in the last column when wrap is
set listchars+=precedes:<

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

" Toggle paste
set pastetoggle=<F6>
call togglebg#map("<F5>")

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

noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols='fancy'

"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"TaskList
map <leader>ta <Plug>TaskList

"NerdTree
map <leader>nn :execute 'NERDTreeToggle ' . getcwd()<CR>

"TagBar
map <leader>rt :TagbarToggle<CR>
let g:tagbar_left=1

"Ident_Guide
let g:indent_guides_guide_size=1

"WinManager
" map <leader>wm :execute 'WMToggle'<CR>
" let g:winManagerWindowLayout = "FileExplorer|TagList"
" let g:winManagerWidth = 30
" let g:winManagerAutoOpen = 0
" let g:winManagerOnRightSide = 1
" let g:persistentBehaviour = 0

"EasyTags
" let g:easytags_updatetime_min=3000

set nocompatible
set laststatus=2
set encoding=utf-8

syntax enable
" set background=light
set background=dark
set linespace=-1
set showbreak=⇇

" Map Ctrl-S as save
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

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

nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv
nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv

if has("autocmd")
    " autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType python setlocal completeopt-=preview
    autocmd FileType java set omnifunc=javacomplete#Complete
    autocmd FileType cpp set omnifunc=omni#cpp#complete#Main
endif

"have Vim jump to the last position when reopening a file
" if has("autocmd")
"     au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"                 \| exe "normal! g'\"" | endif
" endif

" turn off auto select for jedi
let g:jedi#popup_select_first=0
let g:jedi#popup_on_dot=0
let g:jedi#show_call_signatures=0

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags_database/cpp
set tags+=~/Rosetta/main/source/tags
" set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-C Ctrl-T
map <C-C><C-T> :
        \!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
" set completeopt=menuone,menu,longest,preview

" Disable preview window
set completeopt=menuone,menu,longest
let g:SuperTabDefaultCompletionType = "context"

"a.vim
nmap <leader>aa :A<CR>
nmap <leader>as :AS<CR>
nmap <leader>av :AV<CR>

"delimitMate
let delimitMate_expand_space=1
let delimitMate_expand_cr=1
" imap <expr><CR> SuperTab('n') ? "\<C-n>" : "<Plug>delimitMateCR"

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_python_pylint_args = '--disable=C0326,R0914,W0123'
" color solarized
color Tomorrow-Night-Eighties

