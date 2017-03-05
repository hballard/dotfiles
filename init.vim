" VIM PLUG SETTINGS=======================================

" Vim Plug post-install and pre-install hook functions--------------
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

" Vim Plug-------------------------------------------------------
call plug#begin()

" My Plugins
Plug 'tpope/vim-fugitive'
Plug 'simnalamburt/vim-mundo'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'w0rp/ale'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'tpope/vim-dispatch'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'rizzatti/dash.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'rking/ag.vim'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim'
Plug 'chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dyng/ctrlsf.vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'henrik/vim-qargs'
Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'loremipsum'
Plug 'ryanoasis/vim-webdevicons'
Plug 'docunext/closetag.vim'
Plug 'bonsaiben/bootstrap-snippets'
Plug 'dbext.vim'
Plug 'SQLUtilities'
Plug 'SQLComplete.vim'
Plug 'sqlserver.vim'
Plug 'moll/vim-node'
Plug 'myusuf3/numbers.vim'
Plug 'Align'
Plug 'jmcantrell/vim-virtualenv'
Plug 'chrisbra/csv.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'vim-scripts/BufOnly.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'othree/jspc.vim'
Plug 'flowtype/vim-flow'
Plug 'edkolev/tmuxline.vim'
Plug 'rakr/vim-one'
Plug 'othree/csscomplete.vim'
Plug 'zirrostig/vim-schlepp'
Plug 'sheerun/vim-polyglot'
Plug 'flazz/vim-colorschemes'
Plug 'henrik/vim-indexed-search'
Plug 'mhinz/vim-hugefile'
Plug 'liuchengxu/space-vim-dark'
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'vimlab/mdown.vim', { 'do': 'npm install' }
Plug 'tyru/open-browser.vim'
call plug#end()

" NON-PLUGIN RELATED CONFIG SETTINGS================================

"24 Bit True Color-----------------------------------------------
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif

" Keymap to edit init.vim / .vimrc - can't get working correctly-----
"nnoremap <leader>e :edit $MYVIMRC<cr>

" Temp fix for terminal colors (one dark colorscheme)----------------
let g:terminal_color_0="#1b2b34"
let g:terminal_color_1="#ed5f67"
let g:terminal_color_2="#9ac895"
let g:terminal_color_3="#fbc963"
let g:terminal_color_4="#669acd"
let g:terminal_color_5="#c695c6"
let g:terminal_color_6="#5fb4b4"
let g:terminal_color_7="#c1c6cf"
let g:terminal_color_8="#65737e"
let g:terminal_color_9="#ed5f67"
let g:terminal_color_10="#9ac895"
let g:terminal_color_11="#fbc963"
let g:terminal_color_12="#a8aebb"
let g:terminal_color_13="#ced4df"
let g:terminal_color_14="#5fb4b4"
let g:terminal_color_15="#d9dfea"
let g:terminal_color_background="#1b2b34"
let g:terminal_color_foreground="#c1c6cf"

" Set the specific python interpreter---------------------------------
"let g:loaded_python_provider = 1
"let g:loaded_python3_provider = 1
"let g:python3_host_prog = '/usr/local/bin'
"let g:python_host_prog = '/usr/local/bin'

" Vim settings and mappings-------------------------------------------
filetype indent on
set number
set numberwidth=4
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

" toggle scroll of windows
nnoremap <leader>sr :set scb!<CR>

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Make it obvious where 80 characters is
set textwidth=80
"set colorcolumn=+1
" highlight ColorColumn ctermbg=7

" Clear search highlights
noremap <silent><Leader>/ :nohls<CR>

" Snippet
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

"Font and colors cleanup
set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- be

" highlighting
set relativenumber

"set cursorline
autocmd InsertEnter,InsertLeave * set cul!

" folding settings
set foldmethod=indent
set foldlevel=99

"set backspace=2   " Backspace deletes like most programs in insert mode
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
"set history=50
set ruler         " show the cursor position all the time
set hid
set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands
set ignorecase    " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter
set undofile
set undolevels=1000  " how many undos
set undoreload=10000 " number of lines to save for undo
"set undodir=~/.config/nvim/undo " where to save undo history
"set backupdir=~/.config/nvim/backup/
"set directory=~/.config/nvim/backup/

" Enable spellchecking for Markdown
autocmd FileType markdown setlocal spell

" Markdown syntax change
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" .eslintrc syntax change
au BufNewFile,BufFilePre,BufRead *.eslintrc set filetype=json

" .babelrc  syntax change
au BufNewFile,BufFilePre,BufRead *.babelrc set filetype=json

" .esformatter  syntax change
au BufNewFile,BufFilePre,BufRead *.esformatter set filetype=json

" .tern-config  syntax change
au BufNewFile,BufFilePre,BufRead *.tern-config set filetype=json

set pastetoggle=<F5>
set clipboard=unnamed

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" Plugin settings and mappings==========================================

" User commands for use w/ vim-dispatch
:command Glogg Start tig
:command Ipy Start ipython
:command Ipdb Start python -m ipdb %
:command Wdb Start wdb.server.py & python -m wdb %
:command Te Start
:command Node Start node
:command NDbg Start node-debug %
:command Py Start python %
:command PyClean !find . -name '*.pyc' | xargs rm -f
:command Py3 Start python3 %
:command Htop Start htop
:command NpmStart Start npm start
:command NpmClient Start npm run client
:command NpmBuild Start npm run build
:command NpmAPI Start npm run api
:command NpmRedis Start npm run redis

" Virtualenv settings
nnoremap <leader>vl :VirtualEnvList<CR>
nnoremap <leader>vd :VirtualEnvDeactivate<CR>
nnoremap <leader>va :VirtualEnvActivate
let g:virtualenv_stl_format = '[%n]'
"let g:virtualenv_auto_activate = 1

" Vim schlep -- move blocks of text with arrow keys
vmap <unique> <up>    <Plug>SchleppUp
vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <left>  <Plug>SchleppLeft
vmap <unique> <right> <Plug>SchleppRight

" CSS Autocomplete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

"let g:tmuxline_preset = 'nightly_fox'
let g:tmuxline_powerline_separators = 0

"Flow plugin
let g:flow#autoclose = 1
"let g:flow#errjmp = 1

"Json plugin
let g:vim_json_syntax_conceal = 0 " Don't hide Json syntax.

" Autoformat mapping
noremap <F3> :Autoformat<CR>
let g:formatdef_es6 = '"esformatter"'
let g:formatters_javascript_jsx = ['es6']

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

"StatusLine settings -- doesn't apply since I'm using airline
"set statusline+=%#warningmsg#
"set statusline+=%{ALEGetStatusLine()}
"set statusline+=%*
"set statusline+=%{virtualenv#statusline()}

"SQLUtilities change some defaults-------------
let g:sqlutil_align_where=0
let g:sqlutil_align_comma=1

"dbext Connection String settings
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

" vim-javascript--------------------------
let g:javascript_plugin_flow = 1

" Ale Linter settings---------------------
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠ '
let g:ale_statusline_format = ['✗%d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}

" Mundo-----------------------------
" let g:mundo_width = 40
" let g:mundo_preview_height = 15
map <leader>g :MundoToggle<CR>

" Tern------------------------------
"autocmd FileType javascript setlocal omnifunc=tern#Complete
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1

nnoremap K :TernDoc<CR>
nnoremap <leader>K :TernDocBrowse<CR>
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

" Use this to set the python completion to python set in PATH
let g:ycm_python_binary_path = 'python'

" Use this to turn off YCM python completion...
"let g:ycm_filetype_specific_completion_to_disable = {'python': 1}

" This is due to a bug w/ the function definition preview
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"let g:UltiSnipsUsePythonVersion=3

" NerdTree-----------------------------------
let NERDTreeShowHidden=1
map <Leader>n <Plug>NERDTreeTabsToggle<CR>

" Dash -----------------------------
nmap <silent> <leader>D <Plug>DashSearch

" Jedi-Vim ------------------------------
" Python refactoring and goto..using YCM for completions
let g:jedi#completions_enabled = 0

"Set python version for jedi to use for completions; 'auto', 2, or 3 as options
let g:jedi#force_py_version = 'auto'

let g:jedi#show_call_signatures = 1
let g:jedi#show_call_signatures_delay = 500

" mappings
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>rn"

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "bottom"

" Flake8-vim-----------------------------
"let g:PyFlakeOnWrite = 0

" Airline settings-----------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let airline#extensions#ale#error_symbol = '✗'
let airline#extensions#ale#warning_symbol = '⚠'

"let g:airline_theme = 'bubblegum'
let g:airline_theme = 'violet'
"let g:airline_theme = 'one'
"let g:airline_theme = 'powerlineish'

" Syntax highlighting-----------------------------
syntax on
syntax enable
set background=dark
"colorscheme one
colorscheme space-vim-dark
"colorscheme hybrid
"colorscheme lucius
"colorscheme molokai
"colorscheme gruvbox
"colorscheme spacegray
