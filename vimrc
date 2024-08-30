call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'johngrib/vim-game-snake'
Plug 'ashyisme/2048'
Plug 'vim-scripts/TeTrIs.vim'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=25

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#mode#enabled = 1
let g:airline_theme='molokai'

let g:ale_enabled = 1
let g:ale_linters = {'rust':['clippy', 'rustc'], 'c': ['gcc', 'clang'], 'cpp': ['g++', 'clang++'], 'java': ['javac'], 'python': ['flake8', 'pylint'], 'go': ['golangci-lint'], 'html': ['htmlhint'], 'css': ['stylelint'], 'javascript': ['eslint']}
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'always'


inoremap <Del> <C-h>
set backspace=2

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,cp936,gb18030,ucs-bom
set termencoding=utf-8

set number

set autoindent
set shiftwidth=2
