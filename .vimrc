""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Samuel K. Gutierrez
" .vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme ir_black 
colorscheme sunburst

set showcmd
syntax on
" fix backspace in insert mode
"set backspace=indent,eol,start
"set number
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set incsearch
set showmatch
set ls=2
set hlsearch
set textwidth=80
set softtabstop=4
" working directory is always the same as the buffer you are editing
" this is nice, but it confuses ctags :-(
"autocmd BufEnter * lcd %:p:h
"
" testing
filetype plugin on

" underline bad spelling
hi clear SpellBad
hi SpellBad cterm=underline
hi SpellCap cterm=underline

" stop terrible default indentation of '#'s in python
autocmd BufRead *.py inoremap # X<c-h>#

" omnicompletion stuff
set ofu=syntaxcomplete#Complete
if v:version >= 700
    " override built-in C omnicomplete with C++ OmniCppComplete plugin
    set omnifunc=syntaxcomplete#Complete
    let OmniCpp_GlobalScopeSearch   = 1
    let OmniCpp_DisplayMode         = 1
    let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
    let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
    let OmniCpp_ShowAccess          = 1 "show access in pop-up
    let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
    set completeopt=menuone,menu,longest
endif

" change the popup menu color
hi Pmenu ctermfg=green ctermbg=darkgrey guifg=lightgrey guibg=brown
hi PmenuSel ctermfg=red ctermbg=darkgrey guifg=white guibg=grey40
