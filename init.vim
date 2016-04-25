
call plug#begin()
" My Plugins

Plug 'tpope/vim-fugitive'
Plug 'simnalamburt/vim-mundo'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
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
Plug 'jelera/vim-javascript-syntax'
Plug 'maksimr/vim-jsbeautify'
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
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim'
Plug 'andviro/flake8-vim'
Plug 'euclio/vim-markdown-composer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dyng/ctrlsf.vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'henrik/vim-qargs'
Plug 'mxw/vim-jsx'
Plug 'justinj/vim-react-snippets'
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
Plug 'vim-scripts/ScrollColors'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/csapprox'
Plug 'vim-scripts/BufOnly.vim'
Plug 'kassio/neoterm'
Plug 'qpkorr/vim-bufkill'

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
set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- be

" Syntax highlighting-----------------------------
syntax on
syntax enable
set background=dark
"colorscheme jellybeans
colorscheme hybrid
"colorscheme solarized

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
set clipboard=unnamed

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" ============================================================================
" Plugins settings and mappings

" Vimux settings--------------------------------------------------------

" Config
let g:VimuxHeight = "30"

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" JsBeautify commands---------------------------------------------------
map <leader>B :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer> <leader>B :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <leader>B :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <leader>B :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <leader>B :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <leader>B :call CSSBeautify()<cr>

autocmd FileType javascript vnoremap <buffer> <leader>B :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <leader>B :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <leader>B :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <leader>B :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <leader>B :call RangeCSSBeautify()<cr>

" Neoterm config--------------------------------------------------------
let g:neoterm_position = 'horizontal'
let g:neoterm_size = '10'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" run set test lib
 nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
 nnoremap <silent> ,rf :call neoterm#test#run('file')<cr>
 nnoremap <silent> ,rn :call neoterm#test#run('current')<cr>
 nnoremap <silent> ,rr :call neoterm#test#rerun()<cr>

" Useful maps
" hide/close terminal
 nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
 nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
 nnoremap <silent> ,tc :call neoterm#kill()<cr>
"
" Git commands
command! -nargs=+ Tg :T git <args>
command! -nargs=+ Ti :T ipython <args>

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
autocmd FileType html,htmljinja,javascript let b:closetag_html_style=1
autocmd Filetype html,xml,xsl,htm,htmljinja,javascript source ~/.config/nvim/plugged/closetag.vim/plugin/closetag.vim

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" CtrlsF mappings------------------------
nmap     <leader>f <Plug>CtrlSFPrompt
vmap     <leader>f <Plug>CtrlSFVwordPath
vmap     <leader>F <Plug>CtrlSFVwordExec
"nmap     <leader>f <Plug>CtrlSFCwordPath
"nmap     <leader>F <Plug>CtrlSFPwordPath
nnoremap <leader>fo :CtrlSFOpen<CR>


"dbext connection string settings
"let g:dbext_default_profile_<profile_name> = '<connection string>'

"" SQLite
let g:dbext_default_profile_mysqlite = 'type=SQLITE:dbname=~/Dropbox/Code/Python/mycontactapp_flask/test.db'
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
let g:syntastic_javascript_checkers = ['jshint', 'eslint']
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
autocmd FileType javascript setlocal omnifunc=tern#Complete
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1

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
let g:jedi#rename_command = "<leader>re"

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "bottom"

" Flake8-vim-----------------------------
let g:PyFlakeOnWrite = 0

" Airline settings-----------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'
