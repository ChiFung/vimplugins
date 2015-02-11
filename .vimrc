" =============================================================================
"                             默认配置                                        =
" =============================================================================
set modelines=0 " CVE-2007-2438

set nocompatible " Use Vim defaults instead of 100% vi compatibility
set backspace=2 " more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
au BufWritePost .vimrc so ~/.vimrc " 自动保存配置

set cc=80 " 显示参考线

let mapleader="," " 设置引导符

syntax on " 语法高亮
syntax enable
set background=dark
colorscheme gruvbox " 设置配色方案
hi Normal ctermbg=Black ctermfg=white

set helplang=cn " 设置帮助文档为中文

set guifont=Source\ Code\ Pro\ for\ Powerline:h13
set number " 设置显示行号
set guioptions-=e
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=B
set guioptions-=0
set go= " 不要图形按键
set cursorline " 高亮当前行
hi CursorLine cterm=NONE ctermbg=darkgray ctermfg=NONE
hi CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
hi vertsplit guifg=fg guibg=bg ctermbg=bg 
set tabstop=4 " 设置tab长度
set softtabstop=4
set shiftwidth=4 " 设置缩进的长度
set list listchars=tab:→\ ,trail:\ 
set scrolloff=3 " 光标移动到buffer时保持3行边距
set autoindent " 设置自动缩进

set hlsearch " 搜索字符高亮
set incsearch
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set foldenable " 允许折叠
set encoding=utf-8 " 默认编码设置
set fileencoding=utf-8
set laststatus=2 " 显示状态行
set showcmd " 显示输入的指令
set ruler " 显示光标位置

" 设置快捷键

" Tab切换
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 进入命令模式
nnoremap ; :


" 退出插入模式
inoremap jj <ESC>
vnoremap <C-[> <ESC>


nnoremap <space> <C-d>
" 全选并复制到系统
nnoremap <leader>y ggVG"+y<CR> 

" 系统粘贴
nnoremap <leader>p "+p<CR>

" =============================================================================
"                              Vundle配置                                     =
" =============================================================================
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'The-NERD-tree'
Bundle 'Tagbar'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'mattn/emmet-vim'

filetype plugin indent on

" =============================================================================
"                              插件配置                                       =
" =============================================================================

" 切换NERDTree
map <F3> :NERDTreeToggle<CR>
nnoremap f :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDChristmasTree=1

" 切换TagbarToggle
map <F4> :TagbarToggle<CR>
nnoremap t :TagbarToggle<CR>

" 对齐线的宽度
let g:indent_guides_guide_size=1


" 状态栏设置
let g:airline_powerline_fonts=1

" Emmet配置
let g:user_emmet_leader_key='<c-p>'
let g:user_emmet_settings = {
\ 'php' : {
\ 'extends' : 'html',
\ 'filters' : 'c',
\ },
\ 'xml' : {
\ 'extends' : 'html',
\ },
\ 'haml' : {
\ 'extends' : 'html',
\ },
\}
