
call plug#begin()
" My Plugins

Plug 'tpope/vim-fugitive'
Plug 'simnalamburt/vim-mundo'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'suan/vim-instant-markdown'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'myint/syntastic-extras'
Plug 'tpope/vim-dispatch'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'elzr/vim-json'
Plug 'ekalinin/dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'rizzatti/dash.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'rking/ag.vim'
Plug 'marijnh/tern_for_vim'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim'
Plug 'chiel92/vim-autoformat'
Plug 'andviro/flake8-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/airline-onedark.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'henrik/vim-qargs'
Plug 'mxw/vim-jsx'
Plug 'bentayloruk/vim-react-es6-snippets'
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
Plug 'Align'
Plug 'sqlserver.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'chrisbra/csv.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/BufOnly.vim'
"Plug 'kassio/neoterm'
Plug 'qpkorr/vim-bufkill'
Plug 'othree/jspc.vim'
Plug 'flowtype/vim-flow'
Plug 'edkolev/tmuxline.vim'

call plug#end()
" ============================================================================

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif

" Set the specific python interpreter
"let g:loaded_python_provider = 1
"let g:loaded_python3_provider = 1
"let g:python3_host_prog = '/usr/local/bin'
"let g:python_host_prog = '/usr/local/bin'

" Vim settings and mappings
filetype indent on

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
nnoremap <silent> <leader>z :!open -a 'Google Chrome'.app <CR><CR>
nnoremap <silent> <leader>Z :!open -a 'Google Chrome'.app %<CR><CR>

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
"set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- be

" Syntax highlighting-----------------------------
syntax on
syntax enable
set background=dark
"colorscheme onedark
colorscheme hybrid
"colorscheme solarized

" highlighting
set relativenumber
"set cursorline
:autocmd InsertEnter,InsertLeave * set cul!

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

" Associate javascript files with html for jsx bootstrap snippets
"autocmd BufFilePre,BufRead,BufNewFile *.js set filetype=javascript.jsx.html

" Markdown syntax change
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set pastetoggle=<F5>
set clipboard=unnamed

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" ============================================================================
" Plugins settings and mappings

let g:tmuxline_preset = 'nightly_fox'
let g:tmuxline_powerline_separators = 0

" User commands for use w/ vim-dispatch
:command Glogg Start tig
:command Ipy Start ipython
:command Te Start
:command Node Start node
:command NDbg Start node-debug %
:command Py Start python % 
:command Py3 Start python3 %
:command Htop Start htop
:command Npm Start npm start

"Flow plugin
let g:flow#autoclose = 1
"let g:flow#errjmp = 1

"Json plugin
let g:vim_json_syntax_conceal = 0 " Don't hide Json syntax.

" Autoformat mapping
noremap <F3> :Autoformat<CR>
let g:formatdef_es6 = '"esformatter"'
let g:formatters_javascript_jsx = ['es6']

" Neoterm config--------------------------------------------------------
"let g:neoterm_position = 'horizontal'
"let g:neoterm_size = '10'
"let g:neoterm_automap_keys = ',tt'

" Indentline settings
let g:indentLine_color_term = 237
let g:indentLine_char = '|'

" Nerdtree git plugin settings
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

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


" Closetag configuration------------------
autocmd FileType html,htmljinja,javascript let b:closetag_html_style=1
autocmd Filetype html,xml,xsl,htm,htmljinja,javascript source ~/.config/nvim/plugged/closetag.vim/plugin/closetag.vim

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" CtrlsF mappings------------------------
nmap     <leader>f <Plug>CtrlSFPrompt
vmap     <leader>f <Plug>CtrlSFVwordPath
vmap     <leader>F <Plug>CtrlSFVwordExec
nnoremap <leader>fo :CtrlSFOpen<CR>

"Default SQL language to be used ('mysql' or 'sqlserver')
let g:sql_type_default = 'sqlserver'

"SQLUtilities change some defaults-------------
let g:sqlutil_align_where=0
let g:sqlutil_align_comma=1

"dbext connection string settings
"let g:dbext_default_profile_<profile_name> = '<connection string>'

" DBext Connections----------------------------
" Active Connection
let g:dbext_default_profile_mysqlite = 'type=SQLITE:dbname=~/Desktop/simplereactapp/test.db'
let g:dbext_default_profile = 'mysqlite'

" FZF  mappings--------------------------
nnoremap <leader>p :FZF<CR>
nnoremap <leader>P :FzfAg<CR>
nnoremap <leader>b :FzfBuffers<CR>
nnoremap <leader>s :FzfSnippets<CR>
nnoremap <leader>H :FzfHistory<CR>
nnoremap <leader>T :FzfBTags<CR>
nnoremap <leader>L :FzfLines<CR>
nnoremap <leader>t :FzfTags<CR>
nnoremap <leader>c :FzfCommands<CR>

"  Ack and Ag-----------------------------
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
 endif

" TagBar-----------------------------
" toggle tagbar display
map <leader>r :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1


" Syntastic's -----------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflake', 'pep8']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_tidy_exec = ['tidy5']
"let g:syntastic_python_python_exec = 'python3'

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

" Mundo-----------------------------
" let g:mundo_width = 40
" let g:mundo_preview_height = 15
map <leader>g :MundoToggle<CR>

" Tern------------------------------
"autocmd FileType javascript setlocal omnifunc=tern#Complete
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1

nnoremap <leader>K :TernDoc<CR>
nnoremap <leader>k :TernDocBrowse<CR>
nnoremap <leader>d :TernDefPreview<CR>
nnoremap <leader>D :TernDef<CR>
nnoremap <leader>rn :TernRename<CR>
nnoremap <leader>u :TernRefs<CR>
nnoremap <leader>y :TernType<CR>

" YouCompleteMe and UltiSnips compatibility, with the help of supertab-----
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0

" use this to set the python completion to python3
"let g:ycm_python_binary_path = '/usr/local/bin/python3'

" use this to turn off YCM python completion...
"let g:ycm_filetype_specific_completion_to_disable = {'python': 1}

" This is due to a bug w/ the function definition preview
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsUsePythonVersion=2

" NerdTree-----------------------------------
let NERDTreeShowHidden=1
map <Leader>n <Plug>NERDTreeTabsToggle<CR>
"map <Leader>n :NERDTreeToggle<CR>

" Dash -----------------------------
nmap <silent> <leader>D <Plug>DashSearch

" Jedi-Vim ------------------------------
" Python completions...using YCM for everything else.
"let g:jedi#completions_enabled = 1
"Set python version for jedi to use for completions
"let g:jedi#force_py_version = 3
let g:jedi#show_call_signatures = 1
let g:jedi#show_call_signatures_delay = 0

" mappings
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>rn"

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "bottom"

" Flake8-vim-----------------------------
let g:PyFlakeOnWrite = 0

" Airline settings-----------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'onedark'
let g:airline_theme = 'powerlineish'
