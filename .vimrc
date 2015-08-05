" ============================================================================
" Vundle initialization
" Avoid modify this section, unless you are very sure of what you are doing

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'

" My Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'sjl/gundo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'myint/syntastic-extras'
Plugin 'tpope/vim-dispatch'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'shinokada/dragvisuals.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'Yggdroot/indentLine'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'rizzatti/dash.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'yaroot/vissort'
Plugin 'tpope/vim-sleuth'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'suan/vim-instant-markdown'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'davidhalter/jedi-vim'
Plugin 'andviro/flake8-vim'
Plugin 'bling/vim-airline'
Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'dyng/ctrlsf.vim'
Plugin 'sickill/vim-monokai'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'henrik/vim-qargs'
Plugin 'mxw/vim-jsx'
Plugin 'justinj/vim-react-snippets'
Plugin 'mattn/livestyle-vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'loremipsum'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'docunext/closetag.vim'
Plugin 'edsono/vim-matchit'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" filetype plugin on
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ============================================================================
" Vim settings and mappings

set number
set numberwidth=4

" key mappings
let mapleader = " "
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" incremental search
set incsearch
" highlighted search results
set hlsearch

" Force Saving Files that Require Root Permission ('w!!')
cmap w!! %!sudo tee > /dev/null %

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew<CR>
map ts :tab split<CR>

" buffer navigation mappings

map bn :bn<CR>
map bp :bp<CR>
map bm :bm
map sb :sb<CR>

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
" highlight ColorColumn ctermbg=7

" Clear search highlights
noremap <silent><Leader>/ :nohls<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Remap to move blocks of text
nnoremap <Left> ^i<BS><Esc>
nnoremap <Right> ^i<Space><Esc>
nnoremap <Down> ddjp
nnoremap <Up> ddkkp

iabbr pmail heath.ballard@gmail.com

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" mapping for better splits
nnoremap <leader>j 5<C-W>-
nnoremap <leader>k 5<C-W>+
nnoremap <leader>l 5<C-W>>
nnoremap <leader>h 5<C-W><
nnoremap <leader>= <C-W>=

" highlighting
set relativenumber
set cursorline

" folding settings
set foldmethod=indent
set foldlevel=99

set backspace=2   " Backspace deletes like most programs in insert mode
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands
set ignorecase    " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter
set autoread
set undofile
set undodir=~/.vim/undo " where to save undo history
" numbers
set undolevels=1000  " how many undos
set undoreload=10000 " number of lines to save for undo
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" Enable spellchecking for Markdown
autocmd FileType markdown setlocal spell

" Change Vim's CWD to open file
" autocmd BufEnter * silent! lcd %:p:h

" Markdown syntax change
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set pastetoggle=<F5>
"set clipboard=unnamed

" ============================================================================
" Plugins settings and mappings
"Delimitemate config
let delimitMate_matchpairs = "(:),[:],{:},<:>"
au FileType vim,html,javascript let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" Closetag configuration
autocmd FileType html,htmldjango,jinjahtml,javascript let b:closetag_html_style=1
autocmd Filetype html,xml,xsl,htm,htmldjango,jinjahtml,javascript source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" CtrlsF mappings
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>


" CtrlP mappings
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>P :CtrlPCurWD<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>M :CtrlPMRUFiles<CR>
nnoremap <leader>T :CtrlPBufTag<CR>
nnoremap <leader>L :CtrlPLine<CR>

"Ctrlp extension for command line
nnoremap <leader>c :CtrlPCmdPalette<CR>

" Change CWD to NERDtree root
let g:ctrlp_working_path_mode = 'rw'

" Drag Visuals----------------------------
runtime plugin/dragvisuals.vim

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1
nnoremap <leader>t :CtrlPTag<CR>

"  Ack and Ag-----------------------------
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects
    " .gitignore
    " let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
          \ --ignore .git
          \ --ignore .svn
          \ --ignore .hg
          \ --ignore .DS_Store
          \ --ignore "**/*.pyc"
          \ -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
 endif

" better matching than CtrlP default
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Omnisharp -----------------------------
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim

" TagBar-----------------------------
" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" Syntastic's -----------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
let g:syntastic_javascript_checkers = ['jshint', 'eslint']
let g:syntastic_html_tidy_exec = ['tidy5']

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

" Gundo-----------------------------
" let g:gundo_width = 40
" let g:gundo_preview_height = 15
map <leader>g :GundoToggle<CR>

" Tern------------------------------
autocmd FileType javascript,html setlocal omnifunc=tern#Complete
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_move'
let g:tern_show_signature_in_pum=1

" YouCompleteMe and UltiSnips compatibility, with the help of supertab
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0
" let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_filetype_specific_completion_to_disable = {'python': 1}

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NerdTree-----------------------------------
map <F2> :NERDTreeToggle<CR>
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Change CWD to NERTtree root
let g:NERDTreeChDirMode = 2

" NerdtreeTab---------------------------------
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Dash -----------------------------
nmap <silent> <leader>D <Plug>DashSearch


" Jedi-Vim ------------------------------
" no completions...using YCM for that (with Jedi)
let g:jedi#completions_enabled = 0
" set which version of python to use (option = 2 or 3)
"let g:jedi#force_py_version = 3

let g:jedi#show_call_signatures = 1
" mappings
let g:jedi#goto_assignments_command = "<leader>a"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
" let g:jedi#rename_command = "<leader>r"

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "bottom"

" Flake8-vim-----------------------------
let g:PyFlakeOnWrite = 0

" Airline settings-----------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'

set t_Co=256
set laststatus=2 " Always display the statusline in all windows
set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- be

" Solarized-----------------------------
syntax on
syntax enable
set background=dark
colorscheme Solarized
"colorscheme monokai
