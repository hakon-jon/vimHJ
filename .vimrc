syntax on
set scrolloff=5
"set mouse=a
set autoindent
set number
set hlsearch
"set cursorline
"set cursorcolumn
highlight CursorLine term=reverse cterm=reverse guibg=Grey90
set nojoinspaces
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set copyindent
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	    \| exe "normal g'\"" | endif
			endif

			" Uncomment the following to have Vim load indentation rules according to the
			" detected filetype. Per default Debian Vim only load filetype specific
			" plugins.
			if has("autocmd")
			  filetype indent on
				endif
				" If using a dark background within the editing area and syntax highlighting
				" turn on this option as well

set runtimepath+=/usr/share/vim/addons
syntax enable
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor="latex"
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let g:Tex_GotoError=0
colorscheme desert
"Turning off selecting the menu with alt key, useful for vim-ipython
set winaltkeys=no
"Nice to run python on small scripts"
set <F2>=<C-v><F2>
noremap <F2> :!python % <CR>
"To compile with xelatex nicked from http://tex.stackexchange.com/questions/150770/how-to-make-vim-short-key-for-xelatex-and-pdflatex-both "
function CompileXeTex()
    let oldCompileRule=g:Tex_CompileRule_pdf
    let g:Tex_CompileRule_pdf = 'xelatex  --synctex=-1 -src-specials -interaction=nonstopmode $*'
    call Tex_RunLaTeX()
    let g:Tex_CompileRule_pdf=oldCompileRule
endfunction
map <Leader>lx :<C-U>call CompileXeTex()<CR>
"Fold R syntax"
let r_syntax_folding = 1
"For Rnw pdf viewer"
let R_pdfviewer = 'evince'
set backspace=indent,eol,start
"Do not change the WD for R!"
let R_nvim_wd = -1
