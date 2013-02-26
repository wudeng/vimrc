set nocompatible    " 关闭兼容模式
let mapleader = ","
let g:mapleader = ","
map <silent> <leader>e :call SwitchToBuf("~/.vimrc")<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"SwitchToBuf()实现它在所有标签页的窗口中查找指定的文件名，如果找到这样一个窗口，
"就跳到此窗口中；否则，它新建一个标签页来打开vimrc文件
"上面自动编辑.vimrc文件用到的函数
function! SwitchToBuf(filename)
     let bufwinnr = bufwinnr(a:filename)
     if bufwinnr != -1
     exec bufwinnr . "wincmd w"
          return
     else
          " find in each tab
          tabfirst
          let tab = 1
          while tab <= tabpagenr("$")
               let bufwinnr = bufwinnr(a:filename)
               if bufwinnr != -1
                    exec "normal " . tab . "gt"
                    exec bufwinnr . "wincmd w"
                    return
               endif
               tabnext
               let tab = tab + 1
          endwhile
          " not exist, new tab
          exec "tabnew " . a:filename
     endif
endfunction

" 保存.vimrc以后自动使用.vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc
set clipboard+=unnamed
set viminfo+=!

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>
vnoremap <silent> gv :call VisualSelection('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

nnoremap <silent> <F3> :Rgrep<CR>
let Grep_Default_Filelist = '*.erl *.hrl'

if has("win32")
    let Grep_Path = 'C:/.vim_runtime/GnuWin/grep.exe'
    let Fgrep_Path = 'C:/.vim_runtime/GnuWin/fgrep.exe'
    let Egrep_Path = 'C:/.vim_runtime/GnuWin/egrep.exe'
    let Grep_Find_Path = 'C:/.vim_runtime/GnuWin/find.exe'
    let Grep_Xargs_Path = 'C:/.vim_runtime/GnuWin/xargs.exe'
endif

" snippets
let g:snips_author="wudeng"
let g:my_email_addr="wudeng@4399.net"

"map <Leader>B :MiniBufExplorer<cr>
"map <Leader>c :CMiniBufExplorer<cr>
"map <Leader>u :UMiniBufExplorer<cr>
"map <Leader>t :TMiniBufExplorer<cr>

"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"实现括号的自动配对后防止重复输入），适用python
function! ClosePair(char)
     if getline('.')[col('.') - 1] == a:char
          return "\<Right>"
     else
          return a:char
     endif
endf
" 自动补全括号，包括大括号
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>

set completeopt=longest,menu
"winmanager
"let g:winManagerWindowLayout='FileExplorer|TagList'
"map <leader>wm :WMToggle<CR>
"Taglist
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_GainFocus_On_ToggleOpen=1
"nnoremap <silent> <F8> :TlistToggle<CR>
"ctags
"set tags=E:\erlang-proj\dzhz-erlang\tags
set tags=./tags;/
"set tags+=C:\Erlang\erl5.8.4\lib\tags
"nmap <F10> :!ctags -R E:\erlang-proj\dzhz-erlang\*<CR>
nmap <F10> :!ctags -R ./*<CR>
"set autochdir

"chinese encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,latin-1
"if has("win32")
"    set fileencoding=chinese
"else
"    set fileencoding=utf-8
"endif
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

au GUIEnter * simalt ~x "默认窗口最大化
call pathogen#infect('C:/.vim_runtime/plugins')
set go=
syntax enable       " 语法高亮
filetype plugin on  " 文件类型插件
filetype indent on
set autoindent
autocmd BufEnter * :syntax sync fromstart
set nu              " 显示行号
set so=7          " scrolloff
set showcmd         " 显示命令
set lz              " 当运行宏时，在命令执行完成之前，不重绘屏幕
set hid             " 可以在没有保存的情况下切换buffer
set backspace=eol,start,indent
set whichwrap+=<,>,[,],b,s,h,l " 退格键和方向键可以换行
set incsearch       " 增量式搜索
set hlsearch        " 高亮搜索
"set ignorecase      " 搜索时忽略大小写
set smartcase
set lazyredraw
set magic           " 额，自己:h magic吧，一行很难解释
set showmatch       " 显示匹配的括号
set mat=2         " 闪烁间隔，十分之二秒
set nobackup        " 关闭备份
set nowb
set noswapfile      " 不使用swp文件，注意，错误退出后无法恢复
set lbr             " 在breakat字符处而不是最后一个字符处断行
set tw=500
set ai              " 自动缩进
set si              " 智能缩进
set cindent         " C/C++风格缩进
set wildmenu
set wildignore=*.o,*~,*.pyc,*.beam
set nofen
set ruler
set cmdheight=2
set fdl=10
set ff=dos
set switchbuf=useopen,usetab ",newtab
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldenable
" vimerl
let erlang_folding = 1
let erlang_skel_header = {"Author" : "wudeng", "owner" : "fangyun"}

set ffs=dos,unix,mac

map j gj
map k gk
" To save, press ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" tab转化为4个字符
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>tc :tabclose<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>


set background=dark
colorscheme desert
"set t_Co=256

set history=700  " vim记住的历史操作的数量，默认的是20
set autoread     " 当文件在外部被修改时，自动重新读取
set mouse=a      " 在所有模式下都允许使用鼠标，还可以是n,v,i,c等
map 0 ^
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" 状态栏
set laststatus=2      " 总是显示状态栏，默认为1
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" Status line
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=[%{&fileformat}]              " file format
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

"highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" 获取当前路径，将$HOME转化为~
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z


" 第80列往后加下划线
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)

" 根据给定方向搜索当前光标下的单词，结合下面两个绑定使用
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"
    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")
    if a:direction == 'b'
        execute "normal ?" . l:pattern . "<cr>"
    else
        execute "normal /" . l:pattern . "<cr>"
    endif
    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
" 用 */# 向 前/后 搜索光标下的单词
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <silent> <leader>co :botright cope<cr>
map <silent> <leader>n :cn<cr>
map <silent> <leader>p :cp<cr>
map <silent> <leader>cc :cclose<cr>
" 在文件名上按gf时，在新的tab中打开
"map gf :tabnew <cfile><cr>

" 用c-j,k在buffer之间切换
" nn <C-J> :bn<cr>
" nn <C-K> :bp<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Bash(Emacs)风格键盘绑定
imap <C-e> <END>
imap <C-a> <HOME>
"imap <C-u> <esc>d0i
"imap <C-k> <esc>d$i  " 与自动补全中的绑定冲突
set makeprg=erl\ -make

map <leader>x :Explore<cr>

" 恢复上次文件打开位置
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


" 删除buffer时不关闭窗口
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

" 快捷输入
" 自动完成括号和引号
"inoremap <leader>1 ()<esc>:let leavechar=")"<cr>i
"inoremap <leader>2 []<esc>:let leavechar="]"<cr>i
"inoremap <leader>3 {}<esc>:let leavechar="}"<cr>i
"inoremap <leader>4 {<esc>o}<esc>:let leavechar="}"<cr>O
"inoremap <leader>q ''<esc>:let leavechar="'"<cr>i
"inoremap <leader>w ""<esc>:let leavechar='"'<cr>i

" 自动插入时间
"map <F2> a<C-R>=strftime("%c")<CR><Esc>
" To insert timestamp, press F2.
nmap <F2> a<C-R>=strftime("%c")<CR><Esc>
imap <F2> <C-R>=strftime("%c")<CR>

"nmap <F2> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
"imap <F2> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" 自动保存session
fu! SaveSess()
    execute 'mksession! ' . getcwd() . '/.session.vim'
endfunction

fu! RestoreSess()
    if filereadable(getcwd() . '/.session.vim')
        execute 'so ' . getcwd() . '/.session.vim'
        if bufexists(1)
            for l in range(1, bufnr('$'))
                if bufwinnr(l) == -1
                    exec 'sbuffer ' . l
                endif
            endfor
        endif
    endif
syntax on
endfunction

autocmd VimLeave * call SaveSess()
" autocmd VimEnter * call RestoreSess()

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.erl :call DeleteTrailingWS()
autocmd BufWrite *.hrl :call DeleteTrailingWS()
autocmd BufWrite *.lua :call DeleteTrailingWS()

" 重启后撤销历史可用 persistent undo
set undofile
"set undodir=$VIM/\_undodir
set undodir=C:/.vim_runtime/temp_dirs/
set undolevels=1000 "maximum number of changes that can be undone

let g:vimwiki_list = [{'path' : 'D:/My\ Documents/Dropbox/Public/vimwiki/',
            \'template_path' : 'D:/My\ Documents/Dropbox/Public/vimwiki/template/',
            \'template_default' : 'default_template',
            \'template_ext' : '.html',
            \'path_html': 'D:/My\ Documents/Dropbox/Public/vimwiki/html/'}]
let g:acp_behaviorSnipmateLength = 1
map <F9> :Calendar<cr>

map <leader>F :FufFile!<CR>
map <leader>f :FufTaggedFile!<CR>
map <leader>t :FufTag!<CR>
map <leader>b :FufBuffer!<CR>
nnoremap <silent> <M-]> :FufBufferTagAllWithCursorWord!<CR>
vnoremap <silent> <M-]> :FufBufferTagAllWithSelectedText!<CR>
noremap <silent> <M-]> :FufTagWithCursorWord!<CR>
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
let g:SuperTabMappingForward="<tab>"
let g:SuperTabMappingBackward="<S-Tab>"
let g:vimwiki_menu = ''

iabbrev %= %%%===================================================================
" tab maps
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
map <M-t> :tabnew<CR>
"map <M-w> :tabclose<CR>
map! <M-1> <esc>1gt
map! <M-2> <esc>2gt
map! <M-3> <esc>3gt
map! <M-4> <esc>4gt
map! <M-5> <esc>5gt
map! <M-6> <esc>6gt
map! <M-7> <esc>7gt
map! <M-8> <esc>8gt
map! <M-9> <esc>9gt
map! <M-t> <esc>:tabnew<CR>
"map! <M-w> <esc>:tabclose<CR>
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <M-f> <S-Right>
inoremap <M-b> <S-Left>
inoremap <M-n> <Down>
inoremap <M-p> <Up>
nmap <Tab> v>
nmap <S-Tab> v<
vmap <Tab> >gv
vmap <S-Tab> <gv

" 置 todo-list 
autocmd FileType vimwiki nmap <silent><buffer> <C-x> <Plug>VimwikiToggleListItem
autocmd FileType vimwiki vmap <silent><buffer> <C-x> <Plug>VimwikiToggleListItem
