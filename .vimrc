" Color
" ==============
set t_Co=256
colorscheme darkburn

" Highlevel modes
"===============
filetype plugin indent on
filetype on
set nocompatible " Disallow vi compatibility mode.

" Syntax 
"===============
syntax enable

"Enable syntax highlighting
if has("syntax")
	syntax on
	if version >= 700
		set cursorline  " highlight/underline line the cursor is on
	endif
endif

set ofu=syntaxcomplete#Complete

" Latex
"===============
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*

"let g:Tex_Folding=0 "I don't like folding.
set iskeyword+=:

" Cursor
"===============
"Turn cursorline off for .tex files, because for some reason it horrendously
"slows vim down
autocmd FileType tex set nocursorline
"autocmd FileType tex :SPCheck
set so=8 " Scroll 8 lines ahead of cursor.

" Searching
"===============
"Make all-lowercase searches case-insensitive, otherwise do normal searches
set ignorecase
set smartcase
set incsearch	    "auto start searching
set hlsearch        "hilight found search patterns
"press space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set showmatch " Jump to matching brackets.

" Spacing
"==============
set shiftwidth=4        "shifts (>>) are 4 spaces
set tabstop=4			"tab = 4 spaces
set expandtab
"set cindent			"cstyle indents
set number              "line numbers
set wrap                "wraps text 
set textwidth=0 wrapmargin=0

" Mouse stuff
"==============
set mousem=popup	"right click menu
set mousehide

" Tabs
"==============
set tabpagemax=15

" Tags
"==============
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

" AutoCompletion
"==============
"configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

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
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" Filenames
"==============
set wildmode=longest,list
set wildmenu
" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Other
"==============
set autowrite		"autosave on compile
set scrolloff=2
set backspace=indent,eol,start

" Keymappings
"=============
map <F2> :setlocal spell!<cr>
map <F3> :NERDTreeToggle<cr>
map <F4> :TlistToggle<cr>

"Aliases
"==============
ab #b /**********************************************************
ab #e **********************************************************/
ab #l *--------------------------------------------------------*/

"aliases for oft-mistyped commands
ca WQ wq
ca Wq wq
ca W w
ca Q q


