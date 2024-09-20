call plug#begin('~/.vim/plugged')
" 文件系统浏览器
Plug 'preservim/nerdtree'
" 状态栏
Plug 'vim-airline/vim-airline'
" 主题
Plug 'vim-airline/vim-airline-themes'
" 自动补全
Plug 'jiangmiao/auto-pairs'
" 代码片段管理
Plug 'SirVer/ultisnips'
" 代码片段库
Plug 'honza/vim-snippets'
" 贪吃蛇
Plug 'johngrib/vim-game-snake'
" 代码注释
Plug 'preservim/nerdcommenter'
" 智能补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Dash
Plug 'rizzatti/dash.vim'
call plug#end()

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=25

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#mode#enabled = 1
let g:airline_theme='molokai'

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

nmap <silent> <leader>e :CocList diagnostics<CR>

let g:dash_app_path = '/Applications/Dash.app'
let g:dash_mapping = '<leader>d'
let g:dash_keyword_filetype_map = {
    \ 'c': ['c'],
    \ 'cpp': ['cpp', 'boost'],
    \ 'java': ['java'],
    \ 'python': ['python3', 'django'],
    \ 'html': ['html'],
    \ 'css': ['css'],
    \ 'javascript': ['javascript', 'nodejs'],
    \ 'go': ['go'],
    \ 'rust': ['rust']
    \ }

autocmd BufWritePost * NERDTreeRefreshRoot
autocmd FocusGained * NERDTreeRefreshRoot
autocmd BufEnter * if bufname("#") == "NERD_tree_1" | execute ":NERDTreeRefreshRoot" | endif
