call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'

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
