"不兼容VI模式
set nocompatible
"显示行号
set number
"按照C语法自动缩进
set cindent
"设置缩进长度
set tabstop=4  
set shiftwidth=4  
set softtabstop=4  
set expandtab  
set smarttab 
"set smartindent
set autoindent "自动缩进

"输入大括号回车补全
"imap { {}<ESC>i<CR><ESC>V<O
"补全小括号
"imap ( ()<ESC>i
"设置自动换行  
set wrap

set guifont=Monaco:h14
set background=dark
"设置颜色主题
colorscheme desert
"设置透明度
"set transparency=20
"显示括号对应
set showmatch
"实时显示搜索结果
"set incsearch
"设置搜索高亮
set hlsearch
"忽略大小写  
set ignorecase
"设置查找到文件尾部后折返开头或查找到开头后折返尾部  
set wrapscan
"设置当前行高亮
set cul
"设置编码
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1

