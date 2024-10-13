call plug#begin('~/.vim/plugged')
" 文件系统浏览器
Plug 'preservim/nerdtree'
" 状态栏
Plug 'vim-airline/vim-airline'
" 查看变量和函数列表
Plug 'preservim/tagbar'
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
" 自动保存文件
Plug '907th/vim-auto-save'
" Vim中文手册
Plug 'yianwillis/vimcdoc'
" 放大窗口
Plug 'szw/vim-maximizer'
call plug#end()

" 自动打开文件目录导航栏
autocmd vimenter * NERDTree

" Ctrl-n快速打开或关闭文件目录导航栏
map <C-n> :NERDTreeToggle<CR>

" 设置 NERDTree 窗口的宽度为 25 个字符
let NERDTreeWinSize=25

" 启用 vim-airline 插件的标签页扩展
let g:airline#extensions#tabline#enabled = 1

" 启用 vim-airline 插件的模式显示扩展（如插入模式、正常模式等）
let g:airline#extensions#mode#enabled = 1

" 设置 vim-airline 的主题为 molokai
let g:airline_theme='molokai'

" 在插入模式下，将 Delete 键映射为删除光标前的字符（与 Backspace 功能相同）
inoremap <Del> <C-h>

" 设置 Backspace 的行为，使其在插入模式下可以删除行首的字符
set backspace=2

" Tab键补全
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : coc#pum#visible() ? coc#pum#next(1) : coc#expandable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" : "\<Tab>"

" 在插入模式下，设置 Shift+Tab 的行为：与 Tab 类似，但切换到上一个补全项
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : coc#pum#visible() ? coc#pum#prev(1) : coc#jumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" : "\<S-Tab>"

" 在普通模式下，将 leader+s 映射为打开 Coc.nvim 的代码片段编辑器
nmap <silent> <leader>s :CocCommand snippets.editSnippets<CR>

" 设置 Vim 的文件编码为 UTF-8
set encoding=utf-8

" 设置 Vim 尝试读取文件时使用的编码列表
set fileencodings=utf-8,gb2312,gbk,cp936,gb18030,ucs-bom

" 设置终端编码为 UTF-8
set termencoding=utf-8

" 显示行号
set number

" 启用自动缩进
set autoindent

" 设置每次缩进的空格数为 2
set shiftwidth=2

" 在普通模式下，将 leader+e 映射为打开 Coc.nvim 的诊断列表
nmap <silent> <leader>e :CocList diagnostics<CR>

" 在每次保存文件后，刷新 NERDTree 的根节点
autocmd BufWritePost * NERDTreeRefreshRoot

" 当 Vim 窗口获得焦点时，刷新 NERDTree 的根节点
autocmd FocusGained * NERDTreeRefreshRoot

" 当进入一个缓冲区时，如果上一个缓冲区是 NERDTree，刷新 NERDTree 的根节点
autocmd BufEnter * if bufname("#") == "NERD_tree_1" | execute ":NERDTreeRefreshRoot" | endif

" 禁用 Coc.nvim 启动时的警告信息
let g:coc_disable_startup_warning = 1

" 光标所在行设置下划线
set cursorline

" 启用鼠标
set mouse=a  

"自动保存文件
let g:auto_save = 1

" 与系统剪切版同步
set clipboard=unnamedplus

" F1 显示缓冲区的文件序号
nnoremap <silent> <F1> :ls<CR>

" F2 快速运行代码
nnoremap <F2> :DispatchRun<CR>

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

" F3 放大当前窗口

" F4 打开终端窗口
nnoremap <silent> <F4> :term<CR>

" F5 打开变量和函数的列表
nnoremap <F5> :TagbarToggle<CR>

