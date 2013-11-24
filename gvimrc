"实现全能补全功能，需要打开文件类型检测  
"filetype plugin indent on  
"打开vim的文件类型自动检测功能  
filetype on  
  
"自动重新读入
set autoread

"隐藏工具栏和滑动条  
set guioptions=aAce

"设置标签栏  
"最多30个标签  
set tabpagemax=30   
"显示标签栏    
"set showtabline=2     
       
  
"设定文件浏览器目录为当前目录  
"set bsdir=buffer  
"set autochdir  
  
"保存100条命令历史记录  
set history=100   
      
"总是在窗口右下角显示光标的位置  
set ruler     
      
"在Vim窗口右下角显示未完成的命令   
set showcmd           
  
" 启用鼠标  
if has('mouse')  
  set mouse=a  
endif  
"关闭预览
set completeopt=longest,menu
"设置语法高亮  
if &t_Co > 2 || has("gui_running")  
syntax on  
endif 

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
"以下是插件配置
"NERDTree配置
autocmd VimEnter * NERDTree "启动Vim时自动打开nerdtre
"taglist配置
autocmd VimEnter * TlistToggle "启动时强制打开taglist窗口
let Tlist_Show_One_File=1 "一次只显示一个文件的tag，默认会显示所有打开过的
let Tlist_Use_Right_Window=1 "将taglist窗口放到右边，因为左边放了NERDTree，所以这条很有用！
let Tlist_Compact_Format=1 "紧凑显示，在有限的窗口里可以多显示几行内容
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Exit_OnlyWindow=1 "如果 taglist 窗口是最后一个窗口，则退出 vim
"minibufexpl配置
let g:miniBufExplMapCTabSwitchBufs = 1 "c-tab,c-s-tab切换
let g:miniBufExplMapWindowNavVim = 1 "C-h,j,k,l切换
let g:miniBufExplMapWindowNavArrows = 1 "c-箭头切换
"powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2 "(Always display the statusline in all windows)

let javascript_enable_domhtmlcss=1

"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"supertab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

