call plug#begin('~/.vim/plugged')
" 文件系统浏览器
Plug 'preservim/nerdtree'
" 状态栏
Plug 'vim-airline/vim-airline'
" 主题
Plug 'vim-airline/vim-airline-themes'
" 自动补全
Plug 'jiangmiao/auto-pairs'
" 代码片段库
Plug 'honza/vim-snippets'
" 代码注释
Plug 'preservim/nerdcommenter'
" 智能补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 一键运行
Plug 'tpope/vim-dispatch'

call plug#end()

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=25

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#mode#enabled = 1
let g:airline_theme='molokai'

inoremap <Del> <C-h>
set backspace=2

inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : coc#pum#visible() ? coc#pum#next(1) : coc#expandable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : coc#pum#visible() ? coc#pum#prev(1) : coc#jumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" : "\<S-Tab>"
nmap <silent> <leader>s :CocCommand snippets.editSnippets<CR>

set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,cp936,gb18030,ucs-bom
set termencoding=utf-8

set number

set autoindent
set shiftwidth=2

nmap <silent> <leader>e :CocList diagnostics<CR>

autocmd BufWritePost * NERDTreeRefreshRoot
autocmd FocusGained * NERDTreeRefreshRoot
autocmd BufEnter * if bufname("#") == "NERD_tree_1" | execute ":NERDTreeRefreshRoot" | endif

let g:coc_disable_startup_warning = 1

nnoremap <silent> <F2> :ls<CR>
nnoremap <silent> <F4> :term<CR>

nnoremap <F3> :DispatchRun<CR>

command! DispatchRun call RunCode()

function! RunCode()
    let file_extension = expand('%:e') 
    if file_extension == 'c'
        execute 'Start bash -c "gcc % -o %< && ./%<; rm %<; exec bash"'
    elseif file_extension == 'cpp'
        execute 'Start bash -c "g++ % -o %< && ./%<; rm %<; exec bash"'
    elseif file_extension == 'java'
        execute 'Start bash -c "javac % && java %<; rm %<.class; exec bash"'
    elseif file_extension == 'py'
        execute 'Start bash -c "python3 %; exec bash"'
    elseif file_extension == 'go'
        execute 'Start bash -c "go run %; exec bash"'
    elseif file_extension == 'rs'
        execute 'Start bash -c "rustc % -o %< && ./%<; rm %<; exec bash"'
    elseif file_extension == 'js'
        execute 'Start bash -c "node %; exec bash"'
    else
        echo "未配置的文件类型"
    endif
endfunction

nnoremap <F1> :args *<CR>
