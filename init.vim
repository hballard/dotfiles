" ALL KEYMAPPINGS ARE THE SAME OR VERY SIMILAR TO EMACS 'SPACEMACS' DISTRO

" Vim Plug====================================================
call plug#begin()

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
Plug 'rakr/vim-one'
Plug 'arzg/vim-colors-xcode'
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

" Mouse scrolling
set mouse=a

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
noremap <silent><leader>t/ :nohls<CR>

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
:command! Te Start

" Closetag settings----------------------------------------------------------
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.phtml,*.jsx,*.tsx,*.jinja'

"Default SQL language to be used
let g:sql_type_default = 'pgsql'

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Fugitive (git) Mappings----------------------------
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gS :Gw<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gl :Glogg<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gvd :Gvdiff<CR>

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

let g:virtualenv_stl_format = '[%n]'

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
nnoremap <leader>sf :FZF<CR>
nnoremap <leader>/ :FzfAg<CR>
nnoremap <leader>sb :FzfBuffers<CR>
nnoremap <leader>ss :FzfSnippets<CR>
nnoremap <leader>sh :FzfHistory<CR>
nnoremap <leader>st :Vista finder<CR>
nnoremap <leader>sT :FzfTags<CR>
nnoremap <leader>sc :FzfCommands<CR>
nnoremap <leader>sl :FzfBLines<CR>
nnoremap <leader>sL :FzfLines<CR>

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" CtrlsF mappings-----------------------------------
nmap <leader>sg <Plug>CtrlSFPrompt
vmap <leader>sg <Plug>CtrlSFVwordPath
vmap <leader>sG <Plug>CtrlSFVwordExec
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

" Vista.vim---------------------------------------------
map <leader>jr :Vista<CR>
let g:vista_default_executive = 'coc'
let g:vista_sidebar_width = 45
let g:vista_finder_alternative_executives = ['ctags']
let g:vista_icon_indent = ['╰─▸ ', '├─▸ ']

" Mundo-----------------------------------------------
 "let g:mundo_width = 40
" let g:mundo_preview_height = 15
nnoremap <leader>au :MundoToggle<CR>

" Vim-Polyglot--------------------------------------------------
let g:python_highlight_all=1

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = '<tab>'
" let g:UltiSnipsJumpForwardTrigger = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsUsePythonVersion=3

" SuperTab-------------------------------------------------------
" let g:SuperTabDefaultCompletionType = '<C-n>'
" let g:SuperTabCrMapping = 0

" NerdTree-------------------------------------------------------
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=40

" Open NerdTree upon startup if no input provided
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <leader>ft <Plug>NERDTreeTabsToggle<CR>

" Dash ----------------------------------------------------------
nnoremap <silent> <leader>dd <Plug>DashSearch

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

" Remap keys for gotos
nmap <silent> <leader>md <Plug>(coc-definition)
nmap <silent> <leader>ms <Plug>(coc-type-definition)
nmap <silent> <leader>mi <Plug>(coc-implementation)
nmap <silent> <leader>mu <Plug>(coc-references)
nmap <silent> <leader>mr <Plug>(coc-rename)
nmap <silent> <leader>ma  <Plug>(coc-codeaction)
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

" Remap for format selected region
nmap <silent> <leader>mf  <Plug>(coc-format)

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
nmap <silent> <leader>qf  <Plug>(coc-fix-current)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 Imports   :call     CocAction('runCommand', 'editor.action.organizeImport')

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
let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }

" Custom TS commands
:command! TSWatch Start tsc --watch --pretty
:command! TSBuild !tsc
:command! TSExecute write | vsplit term://npx ts-node %
":command! TSExecute write | vsplit term://tsc --outFile /dev/stdout % \| node
" A little faster in-memory package for doing same thing as line above; must
" install ts-node

augroup TSMappings
  au!
  au BufEnter,FileType typescript nnoremap <leader>mxw :TSWatch<CR>
  au BufEnter,FileType typescript nnoremap <leader>mxb :TSBuild<CR>
  au BufEnter,FileType typescript nnoremap <leader>mxx :TSExecute<CR>
augroup END

" Custom JS commands--------------------------------------------
:command JSexecute write | vsplit term://node %

augroup JSMappings
  au!
  au BufEnter,FileType javascript nnoremap <leader>mxx :JSexecute<CR>
augroup END

" Python commands-----------------------------------------------
:command Pyexecute write | vsplit term://python %

au BufEnter *.py nmap <leader>mxx :Pyexecute<CR>

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

"if has("nvim")
    "let g:go_term_enabled = 1
    "let g:go_term_mode = "vsplit"
    "let g:go_term_height = 30
    "let g:go_term_width = 30
  "endif

augroup GoMappings
au!
  au BufEnter,FileType *.go nnoremap <leader>mxx :GoRun<cr>
  au BufEnter,FileType *.go nnoremap <leader>mxb :GoBuild<cr>
  au BufEnter,FileType *.go nnoremap <leader>mxi :GoInstall<cr>
  au BufEnter,FileType *.go nnoremap <leader>mgc :GoCoverage<cr>
  " au BufEnter,FileType *.go nnoremap <leader>mcc :GoCallers<cr>
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
