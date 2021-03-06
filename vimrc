""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimrc of Fwolf
"
" @package      fwolfrc
" @copyright    Copyright © 2012, Fwolf
" @author       Fwolf <fwolf.aide+fwolfrc@gmail.com>
" @license      http://opensource.org/licenses/mit-license MIT
" @since        2012-09-24
" @link         https://github.com/amix/vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" 这个设置将避免vim以和vi高度兼容的方式工作。这个设置需要在每个vimrc文件的开始。从而影响接下来的很多设置。
set nocompatible


" 启动自动缩进(ai)
set autoindent

" Auto reload file when it's modified outside
set autoread

" 叫vim使用在深色背景dark上看起来比较舒服的颜色显示
" 但如果是在图形界面下，还是用浅色背景light更舒服
set background=dark

" 这个将影响退格键的工作，具体情况非常复杂，可以参照:help 'bs'。bs=backspace
set backspace=2

" 使vim在tab处，插入tab符而不是一串空格
"set noexpandtab
" Use space for cooperativity
set expandtab

" 关闭文件备份的功能
set nobackup

" 按照 C 语言的语法，自动地调整缩进的长度
set cindent

" 超过 textwidth 指定行数的列高亮
" Pick color: :runtime syntax/colortest.vim
" 78 + 3 = 81, not visible in small 80 column window.
set colorcolumn=+3
highlight ColorColumn ctermbg=lightgray guibg=lightgrey

"设置屏幕的列数
set columns=80

" 文件编码
set fileencodings=utf-bom,utf-8,gb2312,default

" 允许折叠
" http://scmbob.org/vim_fdm.html
"set foldenable
"set foldmethod=indent  " 按缩进折叠
"set foldmethod=manual  " 手动折叠
"set foldmethod=marker  " 按标记折叠，默认为 {{{ 和 }}}, 会自动添加

" Sets how many lines of history VIM has to remember
set history=1000

" Show match when type search string
set incsearch

" Show buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" 显示行号
"set number

" F9 to toggle paste mode, press it will not input '<F9>' in insert mode
set pastetoggle=<F9>

" 使得vim在右下角显示当前行列数
set ruler

" 光标移动到 buffer 底部和顶部时保持 N 行距里
set scrolloff=3

" 根据代码结构自动缩进的空格数
set shiftwidth=4

set smarttab
set softtabstop=4

" tab键跳过的空格数
set tabstop=4

" Limit line width, also for auto text-reflow 'gq'
set textwidth=78

" 设置了在窗口右侧何处开始换行
"set wrapmargin=8


syntax on

:set hlsearch
:set showmode



" Use , as <leader> key too
nmap , \

" Call SelectBuf, defaut key <F3> also usable
map <leader>bb :SelectBuf<CR>

" Switch off current search highlight
nmap <silent> <leader>/ :nohlsearch<CR>

" Buffer back/forward/last-used
map <C-j> :bnext<CR>
map <C-k> :bprev<CR>
map <leader>g :b#<CR>

" Ctrl-o to Toggle NERDTree
map <C-o> :NERDTreeToggle<CR>

" Syntastic check
map <silent> <leader>sc :SyntasticCheck<CR>
map <silent> <F7> :SyntasticCheck<CR>

" Mini Buffer Explorer hotkey, but it conflict with BufferExplorer
"map <silent> <F7> :TMiniBufExplorer<CR>
" map <silent> <F7> :WMToggle<CR>
map <silent> <F8> :TlistToggle<CR>

" Define paste mode toggle key
map <F9> :set invpaste<CR>
" Obsolete:
" F10去掉自动缩进功能，F11重新打开之，方便粘贴内容
"map <F9> :set autoindent<CR>:set cindent<CR>
"map <F10> :set noautoindent<CR>:set nocindent<CR>

" 删除多层嵌套的邮件引文，顺便删除上面 sender 那行
" 删除 google groups 的脚注，连同其上下的两个空行
map <F11> :g/^>\s*>/d<CR> kdd :g/> --\~--/,/> -\~/d<CR> k2dd :wq

" Vimtips: 设置F12键清除所有内容
map <F12> 1GdG:wq



" BufExplorer
" Whether the default help is displayed or not, 0/n, 1/y
let g:bufExplorerDefaultHelp=1
" Whether the default help is displayed or not, 0/n, 1/y
let g:bufExplorerDetailedHelp=0
" Whether you are taken to the active window when selecting a buffer, 0/n, 1/y
let g:bufExplorerFindActive=1
" Whether to sort the buffer in reverse order or not, 0/n, 1/y
let g:bufExplorerReverseSort=0
" Whether to show directories in the buffer list, 0/n, 1/y
let g:bufExplorerShowDirectories=0
" Whether to show absolute or relative to the current dir, 0/abs, 1/rel
let g:bufExplorerShowRelativePath=0
" Weither or not to show buffers on for the specific tab or not, 0/n, 1/y
let g:bufExplorerShowTabBuffer=1
" Whether to show unlisted buffer, 0/n, 1/y
let g:bufExplorerShowUnlisted=1
" What field the buffers are sorted by
" Available: extension, fullpath, mru, name, number
let g:bufExplorerSortBy='number'
" Where the new split window will be placed, 0/above, 1/below
"let g:bufExplorerSplitBelow=1
" Whether to split out the path and file name, 0/n, 1/y
let g:bufExplorerSplitOutPathName=0
" Where the new vsplit window will be placed, 0/left, 1/right
let g:bufExplorerSplitRight=1



" ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
    \ 'dir' : '\v[\/]\.(git|hg|svn)$|coverage-html$',
    \ 'file': '\v\.(dll|exe|so|tgz|zip)$',
    \ }



" Easy comment
" http://www.vim.org/scripts/script.php?script_id=2082
:runtime comments.vim



" Mini Buffer Explorer
" Avoid vim highlight bug
" let g:miniBufExplForceSyntaxEnable = 0
" Window max lines
let g:miniBufExplMaxSize = 5
" Avoidd MBE open buf in non-editable window
let g:miniBufExplModSelTarget = 1
" 0/upper or left, 1/down or right
let g:miniBufExplSplitBelow = 0
" let g:miniBufExplVSplit = 20



" NERDTree
" Disable Bookmarks, 0/n, 1/y
let NERDTreeMinimalUI = 1
" Close NERDTree window after open file, 0/n, 1/y
let NERDTreeQuitOnOpen = 1
" Window position, left/right
let NERDTreeWinPos = 'right'
let NERDTreeWinSize = 15



" SelectBuf
" Hide buffer number, 0/y, 1/n
let selBufAlwaysHideBufNums = 0
" Show extra details, 0/n, 1/y
let selBufAlwaysShowDetails = 1
" Show help, 0/n, 1/y
let selBufAlwaysShowHelp = 0
" Show hidden buffer, 0/n, 1/y
let selBufAlwaysShowHidden = 0
" Show full path name, 0/n, 1/with filename, 2/split from filename
let selBufAlwaysShowPaths = 1
" Buf select window open mode: split, switch, keep
let selBufBrowserMode = 'split'
" Buf sort direction, 1/asc, -1/desc
let selBufDefaultSortDirection = 1
" Buf sort order: number, name, path, type, indicators, mru
let selBufDefaultSortOrder = 'number'
" Refresh buf browser when add and deleted, 0/n, 1/y
let selBufEnableDynUpdate = 1
" Like above, refresh when browser window get focus, 0/n, 1/y
let selBufDelayedDynUpdate = 0
" Disable MRU list order for performance, 0/n, 1/disabled
let selBufDisableMRUlisting = 0
" Disable summary message, 0/n, 1/disabled
let selBufDisableSummary = 0
" Buf sort case insensitive, 0/n, 1/insensitive
let selBufIgnoreCaseInSort = 1
" Ignore non-file buffer, 0/n, 1/y
let selBufIgnoreNonFileBufs = 1
" Save window size when browser is opend, 0/n, 1/y
let selBufRestoreWindowSizes = 1
" Prefix of split browser mode
let selBufSplitType = ''
" Use vertically-split window, 0/n, 1/y
let selBufUseVerticalSplit = 0
" Execute :file command after buf window close, 0/n, 1/y
let selBufDoFileOnClose = 1
" Set width for show full path, -1/nolimit
let selBufDisplayMaxPath = -1
" Command to launch file
let selBufLauncher = ''
" Save search string in browser window, 0/n, 1/y
let selBufRestoreSearchString = 1
" Show relative path, 0/n, 1/y
let selBufShowRelativePath = 0



" Syntastic
" Auto open error window
let g:syntastic_auto_loc_list = 1
" Skip check when buffer write
let g:syntastic_check_on_wq = 0
" Error window height
let g:syntastic_loc_list_height = 5
" Automatic check mode
let g:syntastic_mode_map = {'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []}
" Symbol sign
let g:syntastic_error_symbol = 'X>'
let g:syntastic_warning_symbol = '!>'
" Checkers
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_post_args = '--standard=psr2'
" Download jsl(Javascript Lint) from: http://javascriptlint.com/download.htm
" make -f Makefile.ref; Then cp Linux_ALL_DBG.OBJ/jsl to local path, chmod +x
" Then make checker for filetype smarty,
" mkdir smarty in checker dir, cp javascript/jsl.vim here,
" regex replace 'javascript' to 'smarty' in it.
let g:syntastic_smarty_checkers = ['jsl']
let g:syntastic_smarty_jsl_conf = '~/.jslrc'
" Debug, :mes to view
let g:syntastic_debug = 0



" Tablify
let b:tablify_headerDelimiter = '#'
let b:tablify_delimiter = '|'
let b:tablify_vertDelimiter = '|'
let b:tablify_horDelimiter = '-'
let b:tablify_horHeaderDelimiter = '='
let b:tablify_divideDelimiter = '+'
let b:tablify_cellLeftPadding = 1
let b:tablify_cellRightPadding = 1



" TagList
" 自动开启Tlist
let Tlist_Auto_Open=0
let Tlist_Auto_Update = 1
let Tlist_Exit_OnlyWindow = 1
" 让当前不被编辑的文件的方法列表自动折叠起来， 这样可以节约一些屏幕空间
let Tlist_File_Fold_Auto_Close=1
" 禁止自动改变当前Vim窗口的大小
let Tlist_Inc_WinWidth = 0
" 把方法列表放在屏幕的右侧
let Tlist_Use_Right_Window=0



" " WinManager
" " When only explorer windows left, quit vim? 0/y, 1/n
" let g:persistentBehaviour=0
" " Explorer area width
" let g:winManagerWidth=30
" " Use vim's default winmanager, 0/y, 1/n
" let g:defaultExplorer=1
"
" let g:winManagerWindowLayout = 'BufExplorer,FileExplorer'



" vim-session
" Auto load session, 'prompt/yes/no'
let g:session_autoload = 'no'
" Auto save session, 'prompt/yes/no'
let g:session_autosave = 'no'



" Vundle
" Plugin define here need not ~/.vim/plugin/xxx.vim anymore.
set nocompatible              " be iMproved, required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

" Repo of https://github.com/vim-scripts/ need only repo name
Plugin 'jiangmiao/auto-pairs'
Plugin 'bufexplorer.zip'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'genutils'
" Plugin 'minibufexpl.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'SelectBuf'
Plugin 'Stormherz/tablify'
" Plugin 'Tabular'
Plugin 'godlygeek/tabular'
" Plugin 'majutsushi/tagbar'
Plugin 'taglist.vim'
Plugin 'nathangrigg/vim-beancount'
Plugin 'terryma/vim-multiple-cursors'
" vim-session need vim-misc
Plugin 'xolox/vim-misc'
Plugin 'alvan/vim-php-manual'
Plugin 'xolox/vim-session'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" http://plog.longwin.com.tw/my_note-unix/2008/10/30/vim-tips-open-file-line-2008
" 每次開啟檔案, 都回復到上次的行數
" Or press `"
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif



" http://kezeodsnx.pixnet.net/blog/post/25222797-vim自動去除行末空白及最後的空白行
" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
function RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//

        " Original: remove \n at EOF
        "silent! %s/\(\s*\n\)\+\%$//
        " Changed: left 1 \n if more than 1 at EOF
        silent! %s/\(\s*\n\)\+\%$/\r/

        call cursor(b:curline, b:curcol)
    endif
endfunction
if has("autocmd")
    autocmd BufWritePre * call RemoveTrailingWhitespace()
endif



" 用浅色高亮当前行
" if has("autocmd")
"   autocmd InsertLeave * se nocursorline
"   autocmd InsertEnter * se cursorline
" endif



" Refresh taglist when save file
if has('autocmd')
    autocmd BufWritePost *.css  :TlistUpdate
    autocmd BufWritePost *.js   :TlistUpdate
    autocmd BufWritePost *.php  :TlistUpdate
    autocmd BufWritePost *.py   :TlistUpdate
endif



if has('autocmd')
    " Auto-format option(gq command)
    " Put here for overwrite default option after each file open
    autocmd FileType * setlocal
        \ formatoptions-=w
        \ formatoptions+=qrocbtBm


    " Indent css, html, js, tpl, xml file by 2 space
    " Ignore TAB first, these file most use on web, 2 space reduce filesize
    autocmd BufNewFile,BufRead *.css,*.htm,*.html,*.js,*.json,
\*.tpl,*.xml,*.xml.dist
        \ setlocal
        \ tabstop=2
        \ softtabstop=2
        \ shiftwidth=2
        \ smarttab
        \ expandtab


    " Indent python file by 4 space
    autocmd FileType python setlocal
        \ tabstop=4
        \ softtabstop=4
        \ shiftwidth=4
        \ smarttab
        \ expandtab
    "   \ textwidth=80


    " Indent Golang file by tab
    autocmd BufNewFile,BufRead *.go setlocal
        \ noexpandtab

" Rst use 4 space(default) now
    " Indent reStructuredText file by tab
    " Use TAB
    " Default GetRSTIndent() is indent by space, is there better replacement ?
"   autocmd BufNewFile,BufRead *.rst setlocal
"       \ noexpandtab
"       \ indentexpr=GetPHPIndent()
endif



" Autoload when file is changed outside of vim
source ~/.vim/plugin/watchforchanges.vim
let autoreadargs={'autoread':1}
execute WatchForChanges('*',autoreadargs)



" Update copyright notice
" Only scan first 50 lines.
" @link http://vim.wikia.com/wiki/Automatically_Update_Copyright_Notice_in_Files
" @link http://oldj.net/article/vim-auto-last-update/
function! UpdateCopyright()
    let s:totalLines = line('$')
    exe '1,' . min([50, s:totalLines]) . ' s:'.
        \ '\cCOPYRIGHT\s*\%((c)\|©\|&copy;\)\?\s*'.
        \   '\%([0-9]\{4}\(-[0-9]\{4\}\)\?,\s*\)*\zs'.
        \   '\('.
        \       '\%('.strftime("%Y").'\)\@![0-9]\{4\}'.
        \       '\%(-'.strftime("%Y").'\)\@!\%(-[0-9]\{4\}\)\?'.
        \   '\&'.
        \       '\%([0-9]\{4\}-\)\?'.
        \       '\%('.(strftime("%Y")-1).'\)\@!'.
        \       '\%([0-9]\)\{4\}'.
        \   '\)'.
        \   '\ze\%(\%([0-9]\{4\}\)\@!.\)*$:'.
        \ '&, '.strftime("%Y").':e'
    exe '1,' . min([50, s:totalLines]) . ' s:'.
        \ '\cCOPYRIGHT\s*\%((c)\|©\|&copy;\)\?\s*'.
        \   '\%([0-9]\{4}\%(-[0-9]\{4\}\)\?,\s*\)*\zs'.
        \       '\%('.strftime("%Y").'\)\@!\([0-9]\{4\}\)'.
        \       '\%(-'.strftime("%Y").'\)\@!\%(-[0-9]\{4\}\)\?'.
        \   '\ze\%(\%([0-9]\{4\}\)\@!.\)*$:'.
        \ '\1-'.strftime("%Y").':e'
endfunction

" if has('autocmd')
"     autocmd BufWritePre *.{php,sh}
"         \ call UpdateCopyright()
" endif
