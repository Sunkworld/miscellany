syntax on
set autoindent
set cindent
set number
set wrap
set shell=/bin/zsh
set linespace=4
colorscheme molokai
let g:molokai_original = 1
set guifont=Monaco:h13
se lines=50 columns=80
set softtabstop=4
set smartindent
set shiftwidth=4
set tabstop=4
filetype on
set laststatus=2
set ruler
set incsearch
set hlsearch
set makeprg=g++\ --debug\ %\ -o\ %< 
map <F5> :call CompileGpp()<CR>
map <S-F5> :call CompileRunGpp()<CR>
func! CompileGpp()
	exec "w"
	exec "make"
	"exec "! ./%<"
	endfunc
func! CompileRunGpp()
	exec "w"
	exec "make"
	exec "! ./%<"
	endfunc
map <F8> :!open -a Skim %<.pdf <cr>
map <F6> :call CompileTex()<cr>
map <F7> :call CompileTex2()<cr>
func! CompileTex()
	exec "w"
	exec "!xelatex %"
endfunc
func! CompileTex2()
	exec "w"
	exec "!xelatex %"
	exec "!bibtex %<.aux"
	exec "!xelatex %"
	exec "!xelatex %"
	exec "!open %<.pdf"
	endfunc

