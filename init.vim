" ALL KEYMAPPINGS ARE THE SAME OR VERY SIMILAR TO EMACS 'SPACEMACS' DISTRO

" Vim Plug====================================================

" Vim Plug Functions------------------------------------
"  none

" Vim Plugins-------------------------------------------
call plug#begin()

"Plug 'flowtype/vim-flow'
"Plug 'metakirby5/codi.vim'
"Plug 'moll/vim-node'
"Plug 'rizzatti/dash.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'bonsaiben/bootstrap-snippets'
Plug 'chrisbra/csv.vim'
Plug 'davidhalter/jedi-vim'
Plug 'docunext/closetag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'flazz/vim-colorschemes'
Plug 'henrik/vim-indexed-search'
Plug 'honza/vim-snippets'
Plug 'itchyny/vim-cursorword'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jodosha/vim-godebug'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-hugefile'
Plug 'mitsuhiko/vim-jinja'
Plug 'myusuf3/numbers.vim'
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'othree/csscomplete.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jspc.vim'
Plug 'python-mode/python-mode'
Plug 'qpkorr/vim-bufkill'
"Plug 'rakr/vim-one'
Plug 'rking/ag.vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'simnalamburt/vim-mundo'
Plug 'ternjs/tern_for_vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
"Plug 'tyru/open-browser.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'
Plug 'vim-scripts/BufOnly.vim'
Plug 'vim-scripts/SQLComplete.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/sqlserver.vim'
Plug 'vimlab/mdown.vim', { 'do': 'npm install' }
Plug 'w0rp/ale'
Plug 'zirrostig/vim-schlepp'

call plug#end()

" NON-PLUGIN RELATED CONFIG SETTINGS================================

filetype indent on
set number
set numberwidth=4
let g:mapleader = ' '

" Easier movement between windows / splits
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h
nnoremap <leader>wd :q<CR>
nnoremap <leader>ws :sp<CR>
nnoremap <leader>wv :vs<CR>

" Keymap to open default shell
nnoremap <leader>' :sp term://zsh<CR>i

" Keymap to edit init.vim / .vimrc
nnoremap <leader>fed :e $MYVIMRC<CR>
nnoremap <leader>feR :source $MYVIMRC<CR>

" Press i to enter insert mode, and ii to exit.
inoremap ii <Esc>

" Change to j,k to move exactly up, down vs linewise wrap
nnoremap k gk
nnoremap j gj

" Remap terminal escape keys
tnoremap <Esc> <c-\><c-n>

" Force Saving Files that Require Root Permission ('w!!')
cmap w!! %!sudo tee > /dev/null %

" tab navigation mappings
nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>
nnoremap <leader>tm :tabm
nnoremap <leader>tN :tabnew<CR>
nnoremap <leader>ts :tab split<CR>
nnoremap <leader>td :q<CR>

" buffer navigation mappings
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bm :bm
nnoremap <leader>bd :bd!<CR>

" show registers
nnoremap <leader>re :register<CR>

" toggle scroll of windows
nnoremap <leader>wsc :set scb!<CR>

" autocompletion of files and commands behaves like shell
" complete only the common part, list the options that match
set wildmode=list:longest

" Make it obvious where 80 characters is
set textwidth=80
" set colorcolumn=+1
" highlight ColorColumn ctermbg=7

" Clear search highlights
noremap <silent><leader>s/ :nohls<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" mapping for better splits
nnoremap <leader>wJ 5<C-W>-
nnoremap <leader>wK 5<C-W>+
nnoremap <leader>wL 5<C-W>>
nnoremap <leader>wH 5<C-W><

"Font and colors cleanup
"set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- be

" highlighting
set relativenumber

"set cursorline
autocmd InsertEnter,InsertLeave * set cul!

set foldmethod=indent
set foldlevel=99
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
"set backspace=2   " Backspace deletes like most programs in insert mode
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
"set history=50
set ruler         " show the cursor position all the time
set hidden
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
au FileType markdown setlocal spell

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
if has('autocmd')
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

"24 Bit True Color-----------------------------------------------
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can
"remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage >
"for more information.)
  if (has('nvim'))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has('termguicolors'))
    set termguicolors
  endif


" Temp fix for terminal colors (one dark colorscheme)----------------
"let g:terminal_color_0='#1b2b34'
"let g:terminal_color_1='#ed5f67'
"let g:terminal_color_2='#9ac895'
"let g:terminal_color_3='#fbc963'
"let g:terminal_color_4='#669acd'
"let g:terminal_color_5='#c695c6'
"let g:terminal_color_6='#5fb4b4'
"let g:terminal_color_7='#c1c6cf'
"let g:terminal_color_8='#65737e'
"let g:terminal_color_9='#ed5f67'
"let g:terminal_color_10='#9ac895'
"let g:terminal_color_11='#fbc963'
"let g:terminal_color_12='#a8aebb'
"let g:terminal_color_13='#ced4df'
"let g:terminal_color_14='#5fb4b4'
"let g:terminal_color_15='#d9dfea'
"let g:terminal_color_background='#1b2b34'
"let g:terminal_color_foreground='#c1c6cf'

" Temp fix for terminal colors (spacemacs dark colorscheme)----------------
let g:terminal_color_1='#d4557d'
let g:terminal_color_2='#5fb4b4'
let g:terminal_color_3='#fbc963'
let g:terminal_color_4='#669acd'
let g:terminal_color_5='#c695c6'
let g:terminal_color_6='#5fb4b4'
let g:terminal_color_9='#d4557d'
let g:terminal_color_10='#86D02F'
let g:terminal_color_11='#fbc963'
let g:terminal_color_14='#5fb4b4'


" PLUGIN SETTINGS AND MAPPINGS==========================================

" external shell commands, and custom functions -----------------------------
:command! Glogg Start tig
:command! Htop Start htop
:command! Http Start http-prompt
:command! Ipdb Start python -m ipdb %
:command! Ipy split term://ipython
:command! JSLineCount !find . -name '*.js' | xargs wc -l
:command! Mgrip Start! open -a Google\ Chrome.app http://localhost:6419 & grip %
:command! NDbg Start node-debug %
:command! Node split term://node
:command! NpmAPI Start npm run api
:command! NpmBuild Start npm run build
:command! NpmClient Start npm run client
:command! NpmStart Start npm start
:command! PyClean !find . -name '*.pyc' | xargs rm -f
:command! PyLineCount !find . -name '*.py' | xargs wc -l
:command! Te Start
:command! Usql split term://usql

"Default SQL language to be used ('mysql' or 'sqlserver')
let g:sql_type_default = 'sqlserver'

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Fugitive (git) Mappings----------------------------
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gS :Gw<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>g. :Glogg<CR>
nnoremap <leader>gm :G
nnoremap <leader>gd :Gdiff
nnoremap <leader>gvd :Gvdiff

" Python-mode settings------------------------------
"let g:pymode = 0
" turn all modules off except syntax highlighting
let g:pymode_syntax = 1
let g:pymode_breakpoint = 0
let g:pymode_doc = 0
let g:pymode_folding = 0
let g:pymode_indent = 0
let g:pymode_lint = 0
let g:pymode_motion = 0
let g:pymode_options = 0
let g:pymode_options_colorcolumn = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_run = 0
let g:pymode_trim_whitespaces = 0
let g:pymode_virtualenv = 0
let g:pymode_warnings = 0

" EasyMotion Mappings---------------------------------
map <leader>jj <Plug>(easymotion-s)
map <leader>jt <Plug>(easymotion-bd-t)
map <leader>jw <Plug>(easymotion-bd-w)
map <leader>je <Plug>(easymotion-bd-e)
map <leader>jl <Plug>(easymotion-bd-jk)
map <leader>jn <Plug>(easymotion-bd-n)

" Vim-test configurations---------------------------
nmap <silent> <leader>mtt :TestNearest<CR>
nmap <silent> <leader>mtm :TestFile<CR>
nmap <silent> <leader>mta :TestSuite<CR>
nmap <silent> <leader>mtl :TestLast<CR>
nmap <silent> <leader>mtv :TestVisit<CR>

" make test commands execute using dispatch.vim
let g:test#strategy = 'neovim'
let g:test#runner_commands = ['PyTest', 'Mocha']
let g:test#python#runner = 'pytest'
let g:test#python#pytest#options = '--verbose'

" Virtualenv settings------------------------------
nnoremap <leader>mVw :VirtualEnvList<CR>
nnoremap <leader>mVd :VirtualEnvDeactivate<CR>
nnoremap <leader>mVa :VirtualEnvActivate
let g:virtualenv_stl_format = '[%n]'
"let g:virtualenv_auto_activate = 1

" Markdown live preview---------------------------
nnoremap <leader>mcp :Mgrip<CR>
nnoremap <leader>mcP :Mpreview<CR>

" Vim schlep -------------------------------------
vmap <unique> <up>    <Plug>SchleppUp
vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <left>  <Plug>SchleppLeft
vmap <unique> <right> <Plug>SchleppRight

" NerdCommenter config----------------------------
map <leader>; <Plug>NERDCommenterToggle
nmap <leader>ca <Plug>NERDCommenterAppend

" CSS Autocomplete--------------------------------
au FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

"let g:tmuxline_preset = 'nightly_fox'
let g:tmuxline_powerline_separators = 0

"Flow plugin---------------------------------------
let g:flow#autoclose = 1
"let g:flow#errjmp = 1

" Clean out AlignMaps mappings -- part of Align plugin
"autocmd VimEnter * AlignMapsClean

" Neoformat----------------------------------------
nnoremap <leader>m= :Neoformat<CR>

" Indentline settings------------------------------
let g:indentLine_color_term = 237
let g:indentLine_char = '|'

" Nerdtree git plugin settings---------------------
let g:NERDTreeIndicatorMapCustom = {
    \ 'Modified'  : '✹',
    \ 'Staged'    : '✚',
    \ 'Untracked' : '✭',
    \ 'Renamed'   : '➜',
    \ 'Unmerged'  : '═',
    \ 'Deleted'   : '✖',
    \ 'Dirty'     : '✗',
    \ 'Clean'     : '✔︎',
    \ 'Unknown'   : '?'
    \ }

" FZF settings--------------------------------------
let g:fzf_command_prefix = 'Fzf'

" fzf statusline mapping
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

au! User FzfStatusLine call <SID>fzf_statusline()

" FZF  mappings
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>/ :FzfAg<CR>
nnoremap <leader>bb :FzfBuffers<CR>
nnoremap <leader>is :FzfSnippets<CR>
nnoremap <leader>fr :FzfHistory<CR>
nnoremap <leader>ji :FzfBTags<CR>
nnoremap <leader>jI :FzfTags<CR>
nnoremap <leader>sc :FzfCommands<CR>
nnoremap <leader>ss :FzfBLines<CR>
nnoremap <leader>sS :FzfLines<CR>

" Closetag configuration----------------------------
au FileType html,htmljinja,javascript let b:closetag_html_style=1
autocmd Filetype html,xml,xsl,htm,htmljinja,javascript source ~/.config/nvim/plugged/closetag.vim/plugin/closetag.vim

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" CtrlsF mappings-----------------------------------
nmap <leader>sp <Plug>CtrlSFPrompt
vmap <leader>sp <Plug>CtrlSFVwordPath
vmap <leader>sP <Plug>CtrlSFVwordExec
nnoremap <leader>so :CtrlSFOpen<CR>

"  Ack and Ag---------------------------------------
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
 endif

" TagBar---------------------------------------------
" toggle tagbar display
map <leader>jr :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" vim-javascript-------------------------------------
let g:javascript_plugin_flow = 1

" Ale Linter settings--------------------------------
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠ '
let g:ale_statusline_format = ['✗ %d', '⚠  %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'jsx': ['stylelint', 'eslint'], 'python': ['flake8', 'mypy', 'pylint']}
let g:ale_fixers = {'python': ['isort']}
let g:ale_linter_aliases = {'jsx': 'css'}
nmap <leader>ep <Plug>(ale_previous_wrap)
nmap <leader>en <Plug>(ale_next_wrap)

" Mundo-----------------------------------------------
 "let g:mundo_width = 40
" let g:mundo_preview_height = 15
nnoremap <leader>au :MundoToggle<CR>

" Tern------------------------------------------------
"autocmd FileType javascript setlocal omnifunc=tern#Complete
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1

nnoremap K :TernDoc<CR>
nnoremap <leader>mK :TernDocBrowse<CR>
nnoremap <leader>md :TernDefPreview<CR>
nnoremap <leader>mr :TernRename<CR>
nnoremap <leader>mu :TernRefs<CR>
nnoremap <leader>my :TernType<CR>

" Vim-Polyglot--------------------------------------------------
let g:python_highlight_all=1

" YouCompleteMe and UltiSnips compatibility,--------------------
" with the help of supertab
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
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsUsePythonVersion=3

" NerdTree-------------------------------------------------------
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=40
map <leader>ft <Plug>NERDTreeTabsToggle<CR>

" Dash ----------------------------------------------------------
nnoremap <silent> <leader>dd <Plug>DashSearch

" Jedi-Vim ------------------------------------------------------
" Python refactoring and goto..using YCM for completions
let g:jedi#completions_enabled = 0

"Set python version for jedi to use for completions; 'auto', 2, or 3 as options
let g:jedi#force_py_version = 'auto'

let g:jedi#show_call_signatures = 1
let g:jedi#show_call_signatures_delay = 500

" mappings
let g:jedi#goto_assignments_command = '<leader>ma'
let g:jedi#goto_definitions_command = '<leader>md'
let g:jedi#documentation_command = 'K'
let g:jedi#usages_command = '<leader>mu'
let g:jedi#rename_command = '<leader>mr'

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = 'bottom'

" Vim-go settings------------------------------------------------
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_addtags_transform = "camelcase"
let g:go_auto_sameids = 0

"if has("nvim")
    "let g:go_term_enabled = 1
    "let g:go_term_mode = "vsplit"
    "let g:go_term_height = 30
    "let g:go_term_width = 30
  "endif

:command! GoRunTemp split term://go run *

au FileType go nmap <leader>ma :GoDeclsDir<cr>
au FileType go nmap <leader>mr :GoRename<cr>
au FileType go nmap <leader>md :GoDef<cr>
"au FileType go nmap <leader>mxx :GoRun<cr>
au FileType go nmap <leader>mxx :GoRunTemp<cr>
au FileType go nmap <leader>mxb :GoBuild<cr>
au FileType go nmap <leader>mxi :GoInstall<cr>
au FileType go nmap <leader>mgc :GoCoverage<cr>

" Airline settings-----------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = '✗'
let g:airline#extensions#ale#warning_symbol = '⚠'

"let g:airline_theme = 'bubblegum'
let g:airline_theme = 'violet'
"let g:airline_theme = 'minimalist'
"let g:airline_theme = 'powerlineish'

" Syntax highlighting--------------------------------------------
syntax on
syntax enable
set background=dark
"colorscheme one
colorscheme space-vim-dark
"colorscheme hybrid
"colorscheme molokai

set t_ZH=^[[3m
set t_ZR=^[[23m
"let &t_ZH="\e[3m"
"let &t_ZR="\e[23m"
hi Comment cterm=italic
