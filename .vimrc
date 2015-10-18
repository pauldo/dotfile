set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'mattn/emmet-vim'
Plugin 'burnettk/vim-angular'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/winmanager'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""主题设置
syntax enable
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12

"设置行号
set nu

"自动缩进
set autoindent

"设置历史命令条数
set history=50

"总在 Vim 窗口的右下角显示当前光标位置
set ruler

"tab长度
set ts=4
set sw=4
set expandtab "开启Tab转空格的操作
set tabstop=4 "Tab表示成4个空格

"高亮行
set cursorline

"去掉左右边的滚动条
set guioptions-=L
set guioptions-=r
"set showtabline=0

"实时搜索
set incsearch
set list lcs=tab:\|\ 

" .vimrc 自动编辑完载入
autocmd! bufwritepost .{,g}vimrc source % " 自动刷新
" 方便切换 splits
nmap <C-Tab> <C-w><C-w>
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

" 取消自动换行
set nowrap

" 自动保存相关设置
au FocusLost * silent! up " vim 窗口失去焦点时保存
au BufLeave * silent! up " vim buffer 切换时自动保存

set scrolloff=5 "光标碰到第五行、倒数第五行时就上下卷屏
set autoread "如果正在编辑的文件在打开后又有其他程序更新，则自动加载

""【插件】YouCompleteMe 配置
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"
""【插件】UltiSnips 配置
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"
""【插件】ctags 配置
"let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
"let g:tagbar_ctags_bin = "/usr/local/bin/ctags"
"
""【插件】airline 配置
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline_powerline_fonts = 1
"let g:airline_theme = "molokai"
"set encoding=utf-8
"set laststatus=2
"set encoding=utf-8
"
""【插件】tagbar 配置
"let g:tagbar_autofocus = 1
"let g:tagbar_autoclose = 1
"nmap <silent> <C-N> :TagbarToggle<CR>
"
"" 【插件】supertab 配置
"let g:SuperTabDefaultCompletionType="context"
"
"" 【插件】Ag 配置
"" 配置Ag搜索忽略的目录和文件
"let g:agprg='ag -S --nocolor --nogroup --column --ignore sitedata --ignore
"image --ignore "tags"'
"
"" 【插件】CtrlP 配置
"" 不限制CtrlP搜索文件的个数，默认为8000个好像
let g:ctrlp_max_files=0

" nerdtree设置
" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeAutoCenter=1
" 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
" let NERDTreeMouseMode=2
" 是否默认显示书签列表
" let NERDTreeShowBookmarks=1
" 是否默认显示文件
let NERDTreeShowFiles=1
" 是否默认显示隐藏文件
" let NERDTreeShowHidden=1
" 是否默认显示行号
" let NERDTreeShowLineNumbers=1
" 窗口位置（'left' or 'right'）
" let NERDTreeWinPos='left'
" 窗口宽
let NERDTreeWinSize=31

" taglist设置
let Tlist_Show_One_File=1 "
" 0为同时显示多个文件函数列表,1则只显示当前文件函数列表
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1 " 非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "如果taglist是最后一个窗口，则退出vim 
let Tlist_Auto_Update=1            "Automatically update the taglist to include newly edited files.
"把taglist窗口放在屏幕的右侧，缺省在左侧
"let Tlist_Use_Right_Window=1 
"显示taglist菜单
"let Tlist_Show_Menu=1
"启动vim自动打开taglist
"let Tlist_Auto_Open=1
" ctags, 指定tags文件的位置,让vim自动在当前或者上层文件夹中寻找tags文件
set tags=tags
" 添加系统调用路径
set tags+=/usr/include/tags
"键绑定，刷新tags
nmap tg :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q *<CR>:set tags+=./tags<CR>

" WinManager设置
" NERD_Tree集成到WinManager
let g:NERDTree_title="[NERDTree]" 
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" 键盘映射，同时加入防止因winmanager和nerdtree冲突而导致空白页的语句
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
" 设置winmanager的宽度，默认为25
let g:winManagerWidth=30 
" 窗口布局
let g:winManagerWindowLayout='NERDTree|TagList'
" 如果所有编辑文件都关闭了，退出vim
let g:persistentBehaviour=0


"对搜索的设置
" map ft :call Search_Word()<CR>:copen<CR>
" function Search_Word()
" let w = expand("<cword>") " 在当前光标位置抓词
" execute "vimgrep " . w . " *"
" endfunction
