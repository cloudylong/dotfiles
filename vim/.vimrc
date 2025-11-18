" ~~~~~~~~~~~~~~~~~~~~~~~~~~ "
"          按键映射          "
" ~~~~~~~~~~~~~~~~~~~~~~~~~~ "

" 将先导键重映射为空格
let mapleader = " "

" ~~~~~~~~~ Insert 模式 ~~~~~~~~~ "
" 光标移动配置，方向键后面不要有任何文本和空格
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>

" ~~~~~~~~~~~~~~~~~~~~~~ "
"          行号          "
" ~~~~~~~~~~~~~~~~~~~~~~ "
                                                      
set number                              " 显示行号
set relativenumber                      " 显示相对行号，便于跳转

" ~~~~~~~~~~~~~~~~~~~~~~ "
"          缩进          "
" ~~~~~~~~~~~~~~~~~~~~~~ "

filetype plugin indent on               " 启用根据文件类型自动缩进
set smartindent                         " 智能缩进，已包含 autoindent 的功能
set shiftwidth=4                        " 自动缩进的空格数量
set expandtab                           " 将制表符 Tab 展开为空格
set tabstop=4                           " Tab 展开为 4 空格
set softtabstop=4                       " 退格删除一个 Tab 的宽度，而不是删除一个空格
set backspace=2                         " 允许 Backspace 键删除缩进、换行符、插入模式下输入的文本

" ~~~~~~~~~~~~~~~~~~~~~~ "
"          折叠          "
" ~~~~~~~~~~~~~~~~~~~~~~ "

set foldmethod=syntax                   " 基于语法折叠文本
set foldlevelstart=99                   " 开打文件时默认不折叠代码
autocmd FileType python setlocal foldmethod=indent      " python 基于缩进折叠

" ~~~~~~~~~~~~~~~~~~~~~~ "
"          搜索          "
" ~~~~~~~~~~~~~~~~~~~~~~ "

set incsearch                           " 实时搜索，自动跳转光标到第一个匹配的位置
set hlsearch                            " 高亮搜索结果

" ~~~~~~~~~~~~~~~~~~~~~~~~ "
"          寄存器          "
" ~~~~~~~~~~~~~~~~~~~~~~~~ "

" set clipboard=unnamed,unnamedplus       " 让无名寄存器与 * 和 +
" 寄存器同步，使用下来弊大于利

" ~~~~~~~~~~~~~~~~~~~~~~~~ "
"          状态栏          "
" ~~~~~~~~~~~~~~~~~~~~~~~~ "

set laststatus=2                        " 总是显示状态栏(默认情况下，有时会隐藏)
set showcmd                             " 在状态栏中显示最后执行的命令

" ~~~~~~~~~~~~~~~~~~~~~~~~~~ "
"          插件管理          "
" ~~~~~~~~~~~~~~~~~~~~~~~~~~ "

" 如果没安装过 vim-plug，则下载安装
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
     \https://raw.GitHub.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'catppuccin/vim', { 'as': 'catppuccin' }       " Catppuccin 主题插件
" Plug 'vim-airline/vim-airline'                      " airline 插件
call plug#end()

" ~~~~~~~~~~~~~~~~~~~~~~ "
"          主题          "
" ~~~~~~~~~~~~~~~~~~~~~~ "

set termguicolors                       " 开启真彩显示
colorscheme catppuccin_mocha            " 使用 Catppuccin Mocah 主题
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE    " 背景透明

" ~~~~~~~~~~~~~~~~~~~~~~ "
"          其他          "
" ~~~~~~~~~~~~~~~~~~~~~~ "

syntax on               " 语法高亮
set encoding=utf-8      " 使用 UTF-8 编码

