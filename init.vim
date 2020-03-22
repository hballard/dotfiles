" ALL KEYMAPPINGS ARE THE SAME OR VERY SIMILAR TO EMACS 'SPACEMACS' DISTRO

" Vim Plug====================================================
call plug#begin()

Plug 'SirVer/ultisnips'
Plug 'liuchengxu/vim-which-key'
Plug 'Lokaltog/vim-easymotion'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'liuchengxu/vista.vim'
Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'alvan/vim-closetag'
Plug 'chrisbra/csv.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'liuchengxu/space-vim-theme'
Plug 'rakr/vim-one'
Plug 'flazz/vim-colorschemes'
Plug 'blueshirts/darcula'
Plug 'henrik/vim-indexed-search'
Plug 'honza/vim-snippets'
Plug 'itchyny/vim-cursorword'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-hugefile'
Plug 'mitsuhiko/vim-jinja'
Plug 'myusuf3/numbers.vim'
Plug 'othree/csscomplete.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jodosha/vim-godebug'
Plug 'qpkorr/vim-bufkill'
Plug 'rking/ag.vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'
Plug 'vim-scripts/BufOnly.vim'
Plug 'vim-scripts/SQLComplete.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'vim-scripts/loremipsum'
Plug 'zirrostig/vim-schlepp'

call plug#end()

" whichkey-------------------------------------------------------------------
let g:mapleader = ' '
" By default timeoutlen is 1000 ms
set timeoutlen=500
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
let g:which_key_map = {}

let g:which_key_map['!'] = { 'name' : 'which_key_ignore' }
let g:which_key_map["'"] = 'open-terminal'
let g:which_key_map[';'] = 'toggle-comment'
let g:which_key_map['/'] = 'fuzzy-match-project'
let g:which_key_map.a = { 'name' : 'which_key_ignore' }
let g:which_key_map.h = { 'name' : 'which_key_ignore' }
let g:which_key_map.H = { 'name' : 'which_key_ignore' }

let g:which_key_map.m = {
      \ 'name' : '+major-mode',
      \ 'd' : 'show-definition',
      \ 's' : 'show-type-definition',
      \ 'i' : 'show-implementation',
      \ 'I' : 'organize-imports',
      \ 'f' : 'format-buffer',
      \ 'u' : 'show-references',
      \ 'r' : 'rename-symbol',
      \ 'a' : 'suggest-code-action',
      \ 'K' : 'show-documentation',
      \ 'c' : 'project-LOC-count',
      \ '=' : 'which_key_ignore',
      \}

let g:which_key_map.m.t = {
      \ 'name' : '+test',
      \ 't' : 'nearest-function',
      \ 'm' : 'whole-file',
      \ 'a' : 'whole-suite',
      \ 'l' : 'last',
      \ 'v' : 'visit',
      \ }

let g:which_key_map.m.p = {
      \ 'name' : '+markdown-preview',
      \ 'p' : 'preview-with-mgrip',
      \ 'P' : 'preview-with-github',
      \ }

let g:which_key_map.m.l = {
        \ 'name' : '+coc-list',
        \ 'l' : 'all',
        \ 'c' : 'commands',
        \ 's' : 'outline',
        \ 'S' : 'symbols',
        \ 'e' : 'extensions',
        \ 'a' : 'actions',
        \ }

let g:which_key_map.m.x = {
        \ 'name' : '+execute',
        \ 'x' : 'run',
        \ 'X' : 'run-project(golang/rust)',
        \ 'b' : 'build',
        \ 'w' : 'watch(typescript-only)',
        \ 'c' : 'coverage(golang)/check-types',
        \ }

let g:which_key_map.w = {
      \ 'name' : '+window',
      \ 'j' : 'down'    ,
      \ 'k' : 'up',
      \ 'l' : 'right',
      \ 'h' : 'left',
      \ 'J' : 'decrease-split-vertical'    ,
      \ 'K' : 'increase-split-vertical',
      \ 'L' : 'increase-split-horizontal',
      \ 'H' : 'decrease-split-horizontal',
      \ 'd' : 'delete',
      \ 's' : 'horizontal-split',
      \ 'v' : 'vertical-split',
      \ '=' : 'which_key_ignore',
      \ }

let g:which_key_map.f = {
        \ 'name' : '+file',
        \ }

let g:which_key_map.f.e = {
        \ 'name' : '+config-file',
        \ 'd' : 'edit-config-file',
        \ 'R' : 'reload-config-file',
        \ }

let g:which_key_map.t = {
        \ 'name' : '+toggle',
        \ '/' : 'search-highlights',
        \ 'm' : 'mundo-history',
        \ 's' : 'symbols',
        \ 'f' : 'file-tree',
        \ 'r' : 'project-search-results',
        \ 'ml' : 'which_key_ignore',
        \ 'sp' : 'which_key_ignore',
        \ '#' : 'which_key_ignore',
        \ '=' : 'which_key_ignore',
        \ ',' : 'which_key_ignore',
        \ ';' : 'which_key_ignore',
        \ ':' : 'which_key_ignore',
        \ '<' : 'which_key_ignore',
        \ '?' : 'which_key_ignore',
        \ '@' : 'which_key_ignore',
        \ 't' : 'which_key_ignore',
        \ '|' : 'which_key_ignore',
        \ '~' : 'which_key_ignore',
        \ }
let g:which_key_map.t.a = { 'name' : 'which_key_ignore' }
let g:which_key_map.t.W = { 'name' : 'which_key_ignore' }

let g:which_key_map.T = {
        \ 'name' : '+tab',
        \ 'n' : 'next-tab',
        \ 'p' : 'previous-tab',
        \ 'N' : 'new-tab',
        \ 's' : 'split-tab',
        \ 'd' : 'delete-tab',
        \ '#' : 'which_key_ignore',
        \ '=' : 'which_key_ignore',
        \ ',' : 'which_key_ignore',
        \ ';' : 'which_key_ignore',
        \ ':' : 'which_key_ignore',
        \ '<' : 'which_key_ignore',
        \ '?' : 'which_key_ignore',
        \ '@' : 'which_key_ignore',
        \ 't' : 'which_key_ignore',
        \ '|' : 'which_key_ignore',
        \ '~' : 'which_key_ignore',
        \ 'sp' : 'which_key_ignore',
        \ }
let g:which_key_map.T.a = { 'name' : 'which_key_ignore' }
let g:which_key_map.T.W = { 'name' : 'which_key_ignore' }

let g:which_key_map.b = {
        \ 'name' : '+buffer',
        \ 'n' : 'next-buffer',
        \ 'p' : 'previous-buffer',
        \ 'd' : 'delete-buffer',
        \ 'a' : 'which_key_ignore',
        \ 'f' : 'which_key_ignore',
        \ 'w' : 'which_key_ignore',
        \ 'b' : 'which_key_ignore',
        \ }

let g:which_key_map.r = {
        \ 'name' : '+registers',
        \ 'e' : 'show-register',
        \ }

let g:which_key_map.g = {
      \ 'name' : '+git/version-control',
      \ 's' : 'status'    ,
      \ 'S' : 'write',
      \ 'b' : 'blame',
      \ 'l' : 'log',
      \ 'd' : 'horizontal-diff',
      \ 'v' : 'vertical-diff',
      \ }

let g:which_key_map.j = {
      \ 'name' : '+jump',
      \ 'j' : 'to-character',
      \ 'w' : 'to-beginning-of-word',
      \ 'e' : 'to-ending-of-word',
      \ }

let g:which_key_map.c = {
      \ 'name' : '+comment',
      \ '$' : 'to-EOL',
      \ 'a' : 'append',
      \ 'b' : 'align-both',
      \ 'c' : 'comment',
      \ 'i' : 'invert',
      \ 'l' : 'align-left',
      \ 'm' : 'minimal',
      \ 'n' : 'nested',
      \ 's' : 'sexy',
      \ 'u' : 'uncomment',
      \ 'y' : 'yank',
      \}

let g:which_key_map.s = {
      \ 'name' : '+search/fuzzy-match',
      \ 'f' : 'filenames',
      \ 'b' : 'buffers',
      \ 's' : 'snippets',
      \ 'h' : 'file-history',
      \ 't' : 'buffer-tags',
      \ 'T' : 'project-tags',
      \ 'c' : 'commands',
      \ 'l' : 'buffer-lines',
      \ 'g' : 'project-search-prompt',
      \ 'G' : 'project-search-noprompt',
      \}
let g:which_key_map.s.w = { 'name' : 'which_key_ignore' }

" let g:which_key_map.a = {
      " \ 'name' : '+applications',
      " \ 'u' : 'change-history-toggle',
      " \}

let g:which_key_map.e = {
      \ 'name' : '+errors/warnings',
      \ 'l' : 'list',
      \ 'n' : 'next',
      \ 'p' : 'previous',
      \}

" NON-PLUGIN RELATED CONFIG SETTINGS================================

filetype indent on
set number
set numberwidth=4

" mapping for better splits
nnoremap <silent><leader>wJ 5<C-W>-
nnoremap <silent><leader>wK 5<C-W>+
nnoremap <silent><leader>wL 5<C-W>>
nnoremap <silent><leader>wH 5<C-W><

" Easier movement between windows / splits
nnoremap <silent><leader>wj <c-w>j
nnoremap <silent><leader>wk <c-w>k
nnoremap <silent><leader>wl <c-w>l
nnoremap <silent><leader>wh <c-w>h
nnoremap <silent><leader>wd :q<CR>
nnoremap <silent><leader>ws :sp<CR>
nnoremap <silent><leader>wv :vs<CR>


" Keymap to open default shell
nnoremap <silent><leader>' :5sp term://zsh<CR>i

" Keymap to edit init.vim / .vimrc
nnoremap <silent><leader>fed :e $MYVIMRC<CR>
nnoremap <silent><leader>feR :source $MYVIMRC<CR>
" Press i to enter insert mode, and ii to exit.
inoremap ii <Esc>

" Change to j,k to move exactly up, down vs linewise wrap
nnoremap k gk
nnoremap j gj

" Mouse scrolling
set mouse=a

" Remap terminal escape keys
tnoremap <Esc> <c-\><c-n>

" Force Saving Files that Require Root Permission ('w!!')
cmap w!! %!sudo tee > /dev/null %

" tab navigation mappings
nnoremap <silent><leader>Tn :tabn<CR>
nnoremap <silent><leader>Tp :tabp<CR>
nnoremap <silent><leader>TN :tabnew<CR>
nnoremap <silent><leader>Ts :tab split<CR>
nnoremap <silent><leader>Td :q<CR>

" buffer navigation mappings
nnoremap <silent><leader>bn :bn<CR>
nnoremap <silent><leader>bp :bp<CR>
nnoremap <silent><leader>bd :bd!<CR>

" show registers
nnoremap <silent><leader>re :register<CR>

" autocompletion of files and commands behaves like shell
" complete only the common part, list the options that match
set wildmode=list:longest

" Make it obvious where 80 characters is
set textwidth=80
" set colorcolumn=+1
" highlight ColorColumn ctermbg=7

" Clear search highlights
noremap <silent><leader>t/ :nohls<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"Font and colors cleanup
"set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- be

" highlighting
set relativenumber

"set cursorline
"autocmd InsertEnter,InsertLeave * set cul!

set updatetime=2000
set foldmethod=indent
set foldlevel=99
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
"set backspace=2   " Backspace deletes like most programs in insert mode
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
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

augroup FileMappings
  au!
  " Markdown syntax change
  au BufNewFile,BufFilePre,BufRead *.md set filetype=text

  " .eslintrc syntax change
  au BufNewFile,BufFilePre,BufRead *.eslintrc set filetype=json

  " .babelrc syntax change
  au BufNewFile,BufFilePre,BufRead *.babelrc set filetype=json

  " .esformatter syntax change
  au BufNewFile,BufFilePre,BufRead *.esformatter set filetype=json

  " .lock syntax change
  au BufNewFile,BufFilePre,BufRead *.lock set filetype=json

  " Pipfile syntax change
  au BufNewFile,BufFilePre,BufRead Pipfile set filetype=toml

  " specfile syntax change
  au BufNewFile,BufFilePre,BufRead *.spec set filetype=python
augroup END

set pastetoggle=<F5>
set clipboard=unnamed

" Have Vim jump to the last position when reopening a file
if has('autocmd')
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

"24 Bit True Color-----------------------------------------------
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has('termguicolors'))
  set termguicolors
endif

" Temp fix for terminal colors (spacemacs dark colorscheme)----------------
" let g:terminal_color_1='#d4557d'
" let g:terminal_color_2='#5fb4b4'
" let g:terminal_color_3='#fbc963'
" let g:terminal_color_4='#669acd'
" let g:terminal_color_5='#c695c6'
" let g:terminal_color_6='#5fb4b4'
" let g:terminal_color_9='#d4557d'
" let g:terminal_color_10='#86D02F'
" let g:terminal_color_11='#fbc963'
" let g:terminal_color_14='#5fb4b4'


" PLUGIN SETTINGS AND MAPPINGS==========================================

" external shell commands, and custom functions -----------------------------
:command! Glogg Start tig
:command! JSLineCount !find . -name '*.js' -not -path "./node_modules/*" | xargs wc -l
:command! TSLineCount !find . -name '*.ts*' -not -path "./node_modules/*" | xargs wc -l
:command! Mgrip Start! open -a Google\ Chrome.app http://localhost:6419 & grip %
:command! PyClean !find . -name '*.pyc' | xargs rm -f
:command! PyLineCount !find . -name '*.py' | xargs wc -l
:command! RustLineCount !find . -name '*.rs' | xargs wc -l
:command! GoLineCount !find . -name '*.go' | xargs wc -l
" :command! Te Start

" Closetag settings----------------------------------------------------------
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.phtml,*.jsx,*.tsx,*.jinja'

"Default SQL language to be used
let g:sql_type_default = 'pgsql'

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Fugitive (git) Mappings----------------------------
nnoremap <silent><leader>gs :Gstatus<CR>
nnoremap <silent><leader>gS :Gw<CR>
nnoremap <silent><leader>gb :Gblame<CR>
nnoremap <silent><leader>gl :Glogg<CR>
nnoremap <silent><leader>gd :Gdiff<CR>
nnoremap <silent><leader>gv :Gvdiff<CR>

" EasyMotion Mappings---------------------------------
map <silent><leader>jj <Plug>(easymotion-s)
map <silent><leader>jw <Plug>(easymotion-bd-w)
map <silent><leader>je <Plug>(easymotion-bd-e)

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

let g:virtualenv_stl_format = '[%n]'

" Markdown live preview---------------------------
nnoremap <silent><leader>mpp :Mgrip<CR>
nnoremap <silent><leader>mpP :Mpreview<CR>

" Vim schlep -------------------------------------
vnoremap <unique> <up>    <Plug>SchleppUp
vnoremap <unique> <down>  <Plug>SchleppDown
vnoremap <unique> <left>  <Plug>SchleppLeft
vnoremap <unique> <right> <Plug>SchleppRight

" NerdCommenter config----------------------------
nmap <silent><leader>; <Plug>NERDCommenterToggle
nmap <silent><leader>ca <Plug>NERDCommenterAppend
let g:NERDSpaceDelims = 1

" CSS Autocomplete--------------------------------
au FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

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
nnoremap <silent><leader>sf :FZF<CR>
nnoremap <silent><leader>/ :FzfAg<CR>
nnoremap <silent><leader>sb :FzfBuffers<CR>
nnoremap <silent><leader>ss :FzfSnippets<CR>
nnoremap <silent><leader>sh :FzfHistory<CR>
nnoremap <silent><leader>st :Vista finder<CR>
nnoremap <silent><leader>sT :FzfTags<CR>
nnoremap <silent><leader>sc :FzfCommands<CR>
nnoremap <silent><leader>sl :FzfLines<CR>

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" CtrlsF mappings-----------------------------------
nmap <silent><leader>sg <Plug>CtrlSFPrompt
vmap <silent><leader>sg <Plug>CtrlSFVwordPath
vmap <silent><leader>sG <Plug>CtrlSFVwordExec
nnoremap <silent><leader>tr :CtrlSFOpen<CR>

"  Ack and Ag---------------------------------------
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
 endif

" Vista.vim---------------------------------------------
map <silent><leader>ts :Vista<CR>
let g:vista_default_executive = 'coc'
let g:vista_sidebar_width = 45
let g:vista_finder_alternative_executives = ['ctags']
let g:vista_icon_indent = ['╰─▸ ', '├─▸ ']

" Mundo-----------------------------------------------
 "let g:mundo_width = 40
" let g:mundo_preview_height = 15
nnoremap <silent><leader>tm :MundoToggle<CR>

" Vim-Polyglot--------------------------------------------------
let g:python_highlight_all=1

" NerdTree-------------------------------------------------------
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=40

" Open NerdTree upon startup if no input provided
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <silent><leader>tf <Plug>NERDTreeTabsToggle<CR>

" COC.vim -------------------------------------------------------
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Show all diagnostics
nnoremap <silent> <leader>el  :<C-u>CocList diagnostics<cr>
" Use to navigate diagnostics
nmap <silent> <leader>ep <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>en <Plug>(coc-diagnostic-next)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" use `:Imports` to organize import of current buffer
command! -nargs=0 Imports :call CocAction('runCommand', 'editor.action.organizeImport')

" Remap keys for gotos
nmap <silent> <leader>md <Plug>(coc-definition)
nmap <silent> <leader>ms <Plug>(coc-type-definition)
nmap <silent> <leader>mi <Plug>(coc-implementation)
nmap <silent> <leader>mI :Imports<CR>
nmap <silent> <leader>mu <Plug>(coc-references)
nmap <silent> <leader>mr <Plug>(coc-rename)
nmap <silent> <leader>ma  <Plug>(coc-codeaction)
nmap <silent> <leader>mK :call <SID>show_documentation()<CR>
" Remap for format selected region
nmap <silent> <leader>mf  <Plug>(coc-format)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Show list
nnoremap <silent> <leader>mll  :<C-u>CocList<cr>
" Show commands
nnoremap <silent> <leader>mlc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>mls  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>mlS  :<C-u>CocList -I symbols<cr>
" Manage extensions
nnoremap <silent> <leader>mle  :<C-u>CocList extensions<cr>
" Show actions
nnoremap <silent> <leader>mla  :<C-u>CocAction<cr>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <silent> <leader>ma  <Plug>(coc-codeaction-selected)
nmap <silent> <leader>ma  <Plug>(coc-codeaction-selected)

" Fix autofix problem of current line
" nmap <silent> <leader>qf  <Plug>(coc-fix-current)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Use <tab> to expand snippet
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Typescript----------------------------------------------------

" Custom TS commands
:command! TSWatch Start tsc --watch --pretty
:command! TSBuild !tsc
:command! TSExecute write | vsplit term://npx ts-node %
":command! TSExecute write | vsplit term://tsc --outFile /dev/stdout % \| node
" A little faster in-memory package for doing same thing as line above; must
" install ts-node
augroup TSMappings
  au!
  au BufEnter,FileType typescript nnoremap <silent><leader>mxw :TSWatch<CR>
  au BufEnter,FileType typescript nnoremap <silent><leader>mxb :TSBuild<CR>
  au BufEnter,FileType typescript nnoremap <silent><leader>mxx :TSExecute<CR>
  au BufEnter,FileType typescript,typescriptreact nnoremap <silent><leader>mc :TSLineCount<CR>
augroup END

" Custom JS commands--------------------------------------------
:command! JSexecute write | vsplit term://node %
augroup JSMappings
  au BufEnter,FileType javascript nnoremap <silent><leader>mxx :JSexecute<CR>
  au BufEnter,FileType javascript,javascriptreact nnoremap <silent><leader>mc :JSLineCount<CR>
augroup END
" Python commands-----------------------------------------------
:command! Pyexecute write | vsplit term://python %
augroup PythonMappings
  au BufEnter,Filetype python nnoremap <silent><leader>mxx :Pyexecute<CR>
  au BufEnter,Filetype python nnoremap <silent><leader>mc :PyLineCount<CR>
augroup END

" Rust settings--------------------------------------------------
:command! RustExecute write | vsplit term://cargo run %
:command! RustExecuteProject write | vsplit term://cargo run
:command! RustBuild write | vsplit term://cargo build 
:command! RustCheck write | vsplit term://cargo check
augroup RustMappings
  au BufEnter,Filetype rust nnoremap <silent><leader>mxx :RustExecute<CR>
  au BufEnter,Filetype rust nnoremap <silent><leader>mxX :RustExecuteProject<CR>
  au BufEnter,Filetype rust nnoremap <silent><leader>mxb :RustBuild<CR>
  au BufEnter,Filetype rust nnoremap <silent><leader>mxc :RustCheck<CR>
  au BufEnter,Filetype rust nnoremap <silent><leader>mc :RustLineCount<CR>
augroup ENDI


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

augroup GoMappings
au!
  au BufEnter,FileType *.go nnoremap <silent><leader>mxx :GoRun<cr>
  au BufEnter,FileType *.go nnoremap <silent><leader>mxb :GoBuild<cr>
  au BufEnter,FileType *.go nnoremap <silent><leader>mxi :GoInstall<cr>
  au BufEnter,FileType *.go nnoremap <silent><leader>mxc :GoCoverage<cr>
  au BufEnter,FileType *.go nnoremap <silent><leader>mc :GoLineCount<cr>
  " au BufEnter,FileType *.go nnoremap <silent><leader>mcc :GoCallers<cr>
augroup END

" Airline settings-----------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#coc#enabled = 1

let g:airline_theme = 'bubblegum'
" let g:airline_theme = 'violet'

"let g:tmuxline_preset = 'nightly_fox'
let g:tmuxline_powerline_separators = 0

" Syntax highlighting--------------------------------------------
syntax on
syntax enable
set background=dark
let g:one_allow_italics = 1
colorscheme one
" colorscheme space-vim-dark
" colorscheme gruvbox
" colorscheme hybrid
