"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.

set noantialias
"Guardar usando Cntrl
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>
setlocal omnifunc=necoghc#omnifunc

"let $PATH = $PATH . ':' . expand("~/.cabal/bin")
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:necoghc_enable_detailed_browse = 1
"let g:necoghc_debug
" You may already have the following two on, please check
syntax on
filetype plugin on

" This assumes that ghc is in your path, if it is not, or you
" wish to use a specific version of ghc, then please change
" the ghc below to a full path to the correct one
au BufEnter *.hs compiler ghc

" For this section both of these should be set to your
" browser and ghc of choice, I used the following
" two vim lines to get those paths:
" :r!which google-chrome
" :r!which ghc

let g:haddock_browser = "/usr/bin/google-chrome-stable"
let g:ghc = "/usr/local/bin/ghc-7.8.3"


"set g:bl_no_mappings
let g:syntastic_css_checkers = ['csslint']

let g:syntastic_haskell_ghc_mod_exec = 'ghc-mod.sh'
let g:syntastic_javascript_checkers = ['jsxhint','eslint']
let g:syntastic_scala_checkers = ['scalac','fsc']
let g:syntastic_html_checkers = ['jshint','csslint']
let g:CSSLint_FileTypeList = ['css', 'less', 'sess','html']

"remove whitespaces
autocmd BufWritePre * :%s/\s\+$//e
"let g:syntastic_javascript_checkers = ['closurecompiler']
"let g:syntastic_javascript_closurecompiler_path = '/home/yo/Downloads/vimFiles/compiler-latest'
"---------------------------------------------------------
"---------------------------------------------------------

"let g:necoghc_debug=1
"command closeBuff bp | sp | bn | bd
filetype plugin on


"au BufEnter *.hs compiler ghc
let g:ghc = "/usr/local/bin/ghc"
let g:haddock_browser = "/usr/bin/firefox"
"add ; at the end of the line with only press ctrl+enter like intellij

:inoremap <s-c-cr> <Esc>A;
:nnoremap <c-s-cr> A;<Esc>
:inoremap <c-bs> <c-w>
:inoremap <c-cr> <Esc>o
:nnoremap <c-cr> o<Esc>

":nmap <c-cr> A;<Esc>
"usar alt-j para cambiar de modos
let g:move_key_modifier = 'C'

let g:user_emmet_leader_key='<C-Z>'

set timeoutlen=400
:imap ê <Esc>
:nmap ê a
" cambiar de modo usando alt j
:vmap ê <Esc>


"cambiar $!@#@!!#!@#
" :imap <Space>j <Esc>
" :vmap <Space>j <esc>
" :nmap <Space>j a
"map <S-Enter> <Plug>  (easymotion-prefix)

" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4



"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'



"let g:snips_trigger_key='<M-space>'



let g:ctrlp_working_path_mode = 2
let g:ctrlp_working_path_mode = 'ra'
let g:NERDTreeChDirMode=2

nnoremap <F12>f :exe ':silent !firefox %'<CR>
nnoremap <F12>c :exe ':silent !chromium-browser %'<CR>
nnoremap <F12>o :exe ':silent !opera %'<CR>

:let mapleader = ","

"UNITE CONFIG
"let g:yankstack_map_keys = 0
"nmap <A-]> <Plug>yankstack_substitute_older_paste
"nmap <A-[> <Plug>yankstack_substitute_newer_paste
"yankstack#setup()


nnoremap <C-p> :Unite file_rec/async<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <Leader>f :Unite -start-insert file<CR>
imap <buffer> <C-up>   <Plug>(unite_select_next_line)
imap <buffer> <C-down>   <Plug>(unite_select_previous_line)

let g:unite_source_history_yank_enable = 1

nnoremap <Leader>y :Unite history/yank<cr>


nnoremap <space>b :Unite -quick-match buffer<cr>

"UNITE CONFIG END



autocmd BufEnter * lcd %:p:h

map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_max_files = 0
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"set t_Co=256


set copyindent
set showmatch
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
set nobackup
set noswapfile
set hlsearch      " highlight search terms
set incsearch

autocmd FileType html,css set omnifunc=csscomplete#CompleteCSS

:set guioptions-=T  "remove toolbar
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-right> <ESC>:bn<CR>
map <C-left> <ESC>:bp<CR>
highlight SignColumn guibg=darkgrey
set foldenable
set path+=.,/usr/include,,Downloads/proj/
set path+=.,/usr/include,,Downloads/proj/reactProjects
set path+=.,/usr/include,,Downloads/proj/jsprojects
set path+=.,/usr/include,,Downloads/proj/scalaPROJ

nnoremap <silent> [v :bprevious <CR>
nnoremap <silent> <A-q> gt <CR>
nnoremap <silent> ]V :blast <CR>
nnoremap <silent> [V :bfirst <CR>
nnoremap <silent> ]v :bnext <CR>




set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on
set omnifunc=syntaxcomplete#Complete
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:acp_enableAtStartup = 0

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']

"imap <C-J> <Plug>snipMateNextOrTrigger
"smap <C-J> <Plug>snipMateNextOrTrigger

:highlight Pmenu guibg=brown gui=bold
:highlight Pmenu ctermbg=238 gui=bold

"end completion

"HIGHLIGHT CURRENT WORD UNDER CURSOR


" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    "echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    "echo 'Highlight current word: ON'
    return 1
  endif
endfunction
:call AutoHighlightToggle()

"HIGHLIGHT CURRENT WORD UNDER CURSOR

vmap <Space>y "+y
vmap <Space>d "+d
nmap <Space>p "+gP
nmap <Space>P "+p
vmap <Space>p "+gP
vmap <Space>P "+p


command! FormatJSON %!python -m json.tool

execute pathogen#infect()
syntax on
filetype plugin indent on

set hlsearch
set number


"colorscheme SB_peacock
set clipboard+=unnamed

" set smartindent
" set tabstop=3
" set shiftwidth=3
" set expandtab
" set expandtab ts=3 sw=3 ai
vnoremap <C-c>  "+y
vnoremap <C-p>  "+gP

nmap oo o<Esc>k

"""set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 9
"set guifont=Droid\ Sans\ Mono\ 8
"set guifont=Monaco\ 8
"set guifont=Open\ Sans\ 9/-1/5/50/0/0/0/0/1


"set guifont=Source\ Code\ Pro\ 8
"set guifont=Monaco\ 8.2
set guifont=MonacoB2\ Bold\ 8.25
"set guifont=Liberation\ Mono\ 9
:set linespace=0

nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>

:set guioptions-=m


:inoremap ,, <Esc>
:inoremap <Leader>v <C-w>v
:inoremap <Leader>h <C-w>s
"commands no well tested yet

:nnoremap ` '

":set mouse=c
:nnoremap 0 $
:nnoremap ` ^
:vnoremap ` ^
:vnoremap 0 $
"none
"let mapleader="," defined in line 192
:set hidden

set nobackup
set noswapfile
"commands not well tested
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

:noremap <leader><leader>q H<leader><leader>w

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Ignore case when searching
set ignorecase
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
" When searching try to be smart about cases
set smartcase
set ruler

if has("gui_running")
    set t_Co=256
    set background=dark
    syntax on
   "colorscheme SB_peacocks-in-space
   colorscheme solarized
else

    set background=dark
    "set t_Co=256
    let g:solarized_termtrans = 1
    " solarized options
    "colorscheme solarized
     colorscheme solarized
endif
"-----------------------------------------------hasta aca config copiada de
"pagina


"------------------------------------------autoComp when save

" function LessToCss()
"   let current_file = shellescape(expand('%:p'))
"   let filename = shellescape(expand('%:r'))
"   let command = "silent !lessc " . current_file . " " . filename . ".css"
"   execute command
" endfunction
"autocmd BufWritePost,FileWritePost *.less call LessToCss()
autocmd BufWritePost,FileWritePost *.coffee silent !coffee -c <afile>
autocmd BufWritePost,FileWritePost *.less silent !lessc <afile> <afile>:r.css
autocmd BufWritePost,FileWritePost *.styl silent !stylus <afile> >/dev/null
"!gcc file.c && ./a.out
"autocmd BufWritePost,FileWritePost *.rs silent !rustc <afile> && ./a.out

autocmd filetype rust nnoremap <F4> :w <bar> exec '!rustc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>



"__________________________________________AUTOCOMP

let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
" Use airline!!!
let g:airline_enable_branch=1
let g:airline_enable_syntastic=0
let g:airline_detect_paste=1
let g:airline_powerline_fonts=1
"let g:airline_theme="powerlineish"
let g:airline_theme="luna"
"let g:airline_theme="sol"
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline_left_alt_sep='   '
let g:airline_right_alt_sep='   '

:inoremap <c-v> <Esc>v
:vnoremap <c-S-v> <c-v>
:vnoremap <c-v> "+gP


"let g:airline_powerline_fonts = 1

"vmap <Space><Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
"nmap <Leader>a <Plug>(EasyAlign)
filetype plugin on
filetype indent on

"Arpeggio inoremap jk <ESC>

" Extend the global default (NOTE: Remove comments in dictionary before sourcing)
call expand_region#custom_text_objects({
      \ "\/\\n\\n\<CR>": 1,
      \ 'a]' :1,
      \ 'ab' :1,
      \ 'aB' :1,
      \ 'ii' :0,
      \ 'ai' :0,
      \ })



:call arpeggio#load()

Arpeggio inoremap jk <Esc>
Arpeggio inoremap kl <Esc>v

Arpeggio nnoremap jk a
Arpeggio nnoremap kl v

Arpeggio vnoremap jk <Esc>
Arpeggio vnoremap kl <Esc>i
let g:arpeggio_timeoutlen=5

"replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
"replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

set lines=45 columns=83

"red
au InsertLeave * hi Cursor guibg=#dc322f
"gree
au InsertEnter * hi Cursor guibg=#268bd2

map K <Plug>(expand_region_expand)

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)



let g:incsearch#magic = '\v'
"  let g:solarized_termcolors=256
"  let g:solarized_degrade=1
"  let g:solarized_bold=1

autocmd Colorscheme * highlight FoldColumn guifg=bg guibg=bg
"map <S-Enter> <Plug>  (easymotion-prefix)
map J <Plug>(expand_region_shrink)
set nowrap
:imap kk <c-y>
":imap ii <Esc>
"cno ii <c-c>
"
