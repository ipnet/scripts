"==========================================
" Author  : winterfell
" Email   : mimotronik@gmail.com
" Desc    : .vimrc
"==========================================

" set leader key
nnoremap <SPACE> <Nop>
let mapleader = " "

" 开启鼠标支持
" set mouse=a

" nocompatible 用于关闭 compatible 表示不与 Vi 兼容
set nocompatible                " don't bother with vi compatibility "

set autoread                    " reload files when changed on disk, i.e. via `git checkout` "

" 选项用于设置Vim缩短消息长度的标志位列表
set shortmess=atI


set magic                       " For regular expressions turn magic on "
set title                       " change the terminal's title "

" 用于关闭 backup，设置覆盖文件时不保留备份文件
set nobackup                    " do not keep a backup file "

set noerrorbells                " don't beep "
set visualbell t_vb=            " turn off error beep/flash "
set t_vb=
set timeoutlen=500

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B


" ruler 用于显示当前光标所在位置的行号和列号 (逗号分隔)。如果还有空间，在最右端显示文本在文件中的相对位置
set ruler                       " show the current row and column "

" number 用于设置显示行号
set number                      " show line numbers "

" nowrap 设置超过窗口宽度的行不自动回绕显示
set nowrap

" showcmd 用于设置在屏幕最后一行显示 (部分的) 命令
set showcmd                     " display incomplete commands "

" showmode 在插入、替换和可视模式里，在最后一行提供消息
set showmode                    " display current modes "

" showmatch 表示插入括号时短暂地跳转到与之匹配的对应括号，而停留的时间由 matchtime 选项设置
set showmatch                   " jump to matches when entering parentheses "
set matchtime=2                 " tenths of a second to show the matching parenthesis "

" expandtab 选项用于设置在Vim插入模式下按下 Tab 键时，输入到Vim中的都是空格
set expandtab                   " expand tabs to spaces "
" smarttab 表示插入 Tab 时使用 shiftwidth
set smarttab
" shiftround 表示缩进列数对齐到 shiftwidth 值的整数
set shiftround

" autoindent 用于设置新增加的行和前一行具有相同的缩进形式
" 选项用于设置新增行时进行智能缩进，主要用于 C 语言一族，与 cindent 选项类似
set autoindent smartindent shiftround

" shiftwidth 选项用于设置执行Vim普通模式下的缩进操作 ( << 和 >> 命令 )时缩进的列数。而 shiftround 选项则表示缩进列数会自动取整到 ‘shiftwidth’ 选项值的倍数
set shiftwidth=4
" tabstop 选项设置按下 Tab 键时，缩进的空格个数
set tabstop=4
set softtabstop=4                " insert mode tab and backspace use 4 spaces "

" 高亮显示当前列
" set cursorcolumn
" 高亮显示当前行
set cursorline

" search config
" 搜索显示不高亮
" set nohlsearch
" incsearch 选项会让 Vim 根据已经在查找域中输入的文本，预览第一处匹配目标；每当新输入一个字符时，Vim 会即时更新预览内容
set incsearch
set smartcase
set ignorecase

set paste

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

" vim文件类型设置
filetype on
filetype plugin on
filetype indent on

" basic key mapping
noremap L $
noremap H ^
vnoremap L $
vnoremap H ^
nnoremap ; :

noremap cw caw
noremap c' ci'
noremap c" ci"
noremap c" ci"
noremap c( ci(
noremap c) ci)
noremap c{ ci{
noremap c} ci}
noremap c, ct,
noremap c; ct;

noremap dw daw
noremap d' da'
noremap d" da"
noremap d" da"
noremap d( da(
noremap d) da)
noremap d{ da{
noremap d} da}
noremap d, dt,
noremap d; dt;

noremap yw yaw
noremap y' yi'
noremap y" yi"
noremap y" yi"
noremap y( yi(
noremap y) yi)
noremap y{ yi{
noremap y} yi}
noremap y, yt,
noremap y; yt;

" insert model jj = <ESC>
inorema jj <Esc>

" copy and paste
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>P "0p
vnoremap Y "+y

nnoremap <leader>sc :noh<CR>

" Quit normal mode
nnoremap <Space>q  :wq!<CR>
nnoremap <Space>Q  :qa!<CR>


autocmd BufNewFile *.php exec ":call SetPhpTitle()"
func SetPhpTitle()
  call setline(1, "<?php")
  call setline(2, "\/**")
  call setline(3, "* FileName: ".$file_path_name)
  call setline(4, "* CreateDateTime: ".$now_date_time)
  call setline(5, "*/")
  call setline(6, "")
endfunction


autocmd BufNewFile *.sh exec ":call SetBashTitle()"
func SetBashTitle()
    call setline(1, "#!/bin/bash")
    call setline(2, "")
endfunction


autocmd BufNewFile *.xml exec ":call SetXmlTitle()"
func SetXmlTitle()
    call setline(1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>")
    call setline(2, "")
endfunction


" 光标定位到末行
autocmd BufNewFile * normal G

"==========================================
" vim plugin config
"==========================================

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'

call plug#end()