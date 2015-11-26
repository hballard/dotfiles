
call plug#begin()
" My Plugins

Plug 'tpope/vim-fugitive'
Plug 'simnalamburt/vim-mundo'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'myint/syntastic-extras'
Plug 'tpope/vim-dispatch'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'shinokada/dragvisuals.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'rizzatti/dash.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'marijnh/tern_for_vim'
Plug 'tpope/vim-sleuth'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'suan/vim-instant-markdown'
Plug 'JazzCore/ctrlp-cmatcher'
Plug 'davidhalter/jedi-vim'
Plug 'andviro/flake8-vim'
Plug 'bling/vim-airline'
Plug 'dyng/ctrlsf.vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'henrik/vim-qargs'
Plug 'mxw/vim-jsx'
Plug 'justinj/vim-react-snippets'
Plug 'mattn/livestyle-vim'
Plug 'tell-k/vim-autopep8'
Plug 'loremipsum'
Plug 'ryanoasis/vim-webdevicons'
Plug 'docunext/closetag.vim'
Plug 'edsono/vim-matchit'
Plug 'bonsaiben/bootstrap-snippets'
Plug 'dbext.vim'
Plug 'SQLUtilities'
Plug 'SQLComplete.vim'
Plug 'moll/vim-node'
Plug 'tmhedberg/SimpylFold'
Plug 'myusuf3/numbers.vim'
Plug 'benmills/vimux'
Plug 'Align'
Plug 'sqlserver.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'chrisbra/csv.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/vim-scripts/ScrollColors'
Plug 'flazz/vim-colorschemes'

call plug#end()
" ============================================================================

" Set the specific python interpreter
"let g:loaded_python_provider = 1
"let g:loaded_python3_provider = 1
"let g:python3_host_prog = '/usr/local/bin'
"let g:python_host_prog = '/usr/local/bin'

" Vim settings and mappings

set number
set numberwidth=4

" key mappings
let mapleader = " "
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" Press i to enter insert mode, and ii to exit.
inoremap ii <Esc>

" Change to j,k to move exactly up, down vs linewise wrap

nnoremap k gk

" Remap terminal escape keys
tnoremap <Esc> <c-\><c-n>

" Open up current file in chrome
nnoremap <silent> <leader>z :!open -a 'Google Chrome'.app %<CR><CR>

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

"Font and colors cleanup-----------------------------
set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- be

" Syntax highlighting-----------------------------
syntax on
syntax enable
set background=dark
colorscheme jellybeans

" highlighting
set relativenumber
set cursorline

" folding settings
set foldmethod=indent
set foldlevel=99

"set backspace=2   " Backspace deletes like most programs in insert mode
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
"set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands
set ignorecase    " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter
set undofile
set undodir=~/.vim/undo " where to save undo history
set undolevels=1000  " how many undos
set undoreload=10000 " number of lines to save for undo
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

" Enable spellchecking for Markdown
autocmd FileType markdown setlocal spell

" Default SQL language to be used ('mysql' or 'sqlserver')
let g:sql_type_default = 'sqlserver'

" set indentation for sql
autocmd FileType sql setlocal shiftwidth=4 tabstop=4

" javascript indentation settings
autocmd FileType javascript,html setlocal shiftwidth=4 tabstop=4

" Markdown syntax change
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set pastetoggle=<F5>
"set clipboard=unnamed

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" ============================================================================
" Plugins settings and mappings

" fzf settings
let g:fzf_command_prefix = 'Fzf'
" fzf statusline mapping
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

"SQLUtilities change some defaults-------------
let g:sqlutil_align_where=0
let g:sqlutil_align_comma=1

"Delimitemate config----------------------
let delimitMate_expand_cr=1
let delimitMate_matchpairs = "(:),[:],{:},<:>"
au FileType vim,html,javascript let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" To be used with Delimitemate - inserts space between two lines
inoremap <C-c> <CR><Esc>O

" Closetag configuration------------------
autocmd FileType html,htmldjango,htmljinja,javascript let b:closetag_html_style=1
autocmd Filetype html,xml,xsl,htm,htmldjango,htmljinja,javascript source ~/.config/nvim/plugged/closetag.vim/plugin/closetag.vim

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" CtrlsF mappings------------------------
nmap     <leader>f <Plug>CtrlSFPrompt
vmap     <leader>f <Plug>CtrlSFVwordPath
vmap     <leader>F <Plug>CtrlSFVwordExec
"nmap     <leader>f <Plug>CtrlSFCwordPath
"nmap     <leader>F <Plug>CtrlSFPwordPath
nnoremap <leader>fo :CtrlSFOpen<CR>


" FZF  mappings--------------------------
nnoremap <leader>p :FZF<CR>
nnoremap <leader>P :FzfAg<CR>
nnoremap <leader>b :FzfBuffers<CR>
nnoremap <leader>s :FzfSnippets<CR>
nnoremap <leader>h :FzfHistory<CR>
nnoremap <leader>T :FzfBTags<CR>
nnoremap <leader>L :FzfLines<CR>
nnoremap <leader>t :FzfTags<CR>
nnoremap <leader>c :FzfCommands<CR>

" Drag Visuals----------------------------
runtime Plug/dragvisuals.vim

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1

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
"let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
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
autocmd FileType javascript setlocal omnifunc=tern#Complete
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1

" python with virtualenv support--------------------------
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" YouCompleteMe and UltiSnips compatibility, with the help of supertab-----
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0
" let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filetype_specific_completion_to_disable = {'python': 1}

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsUsePythonVersion=2

" NerdTree-----------------------------------
map <Leader>n <Plug>NERDTreeTabsToggle<CR>

" Change CWD to NERTtree root and ctrlp root to NERTtree
let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'

" Dash -----------------------------
nmap <silent> <leader>D <Plug>DashSearch

" Jedi-Vim ------------------------------
" Pyhon completions...using YCM for everything else.
let g:jedi#completions_enabled = 1
"Set python version for jedi to use for completions
"let g:jedi#force_py_version = 3
let g:jedi#show_call_signatures = 1

" mappings
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>r"

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "bottom"

" Flake8-vim-----------------------------
let g:PyFlakeOnWrite = 0

" Airline settings-----------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'
