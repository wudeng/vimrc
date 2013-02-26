let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
imap <silent> <expr> <F5> (pumvisible() ? "\<Plug>LookupFileCE" : "")."\\<Plug>LookupFile"
inoremap <Plug>LookupFileCE 
imap <F2> =strftime("%c")
map! <S-Insert> *
map  h
snoremap <silent> 	 i<Right>=TriggerSnippet()
xmap 	 >gv
nmap 	 v>
map <NL> j
map  k
map  l
nmap  :w
snoremap  b<BS>
xmap  "*d
vnoremap <silent> # :call VisualSearch('b')
snoremap % b<BS>%
snoremap ' b<BS>'
vnoremap <silent> * :call VisualSearch('f')
nmap ,caL <Plug>CalendarH
nmap ,cal <Plug>CalendarV
nmap <silent> ,w,t <Plug>VimwikiTabMakeDiaryNote
nmap <silent> ,w,w <Plug>VimwikiMakeDiaryNote
nmap <silent> ,w,i <Plug>VimwikiDiaryGenerateLinks
nmap <silent> ,wi <Plug>VimwikiDiaryIndex
nmap <silent> ,ws <Plug>VimwikiUISelect
nmap <silent> ,wt <Plug>VimwikiTabIndex
nmap <silent> ,ww <Plug>VimwikiIndex
map ,b :FufBuffer!
map ,t :FufTag!
map ,f :FufTaggedFile!
map ,F :FufFile!
noremap ,m mmHmt:%s///ge'tzt'm
map ,x :Explore
map <silent> ,cc :cclose
map <silent> ,p :cp
map <silent> ,n :cn
map <silent> ,co :botright cope
map ,cd :cd %:p:h:pwd
map ,tc :tabclose
map ,te :tabedit =expand("%:p:h")/
map ,g :vimgrep // **/*.<Left><Left><Left><Left><Left><Left><Left>
vnoremap <silent> ,r :call VisualSelection('replace')
map <silent> ,e :call SwitchToBuf("~/.vimrc")
map 0 ^
map! ¹ 9gt
map! ¸ 8gt
map! · 7gt
map! ¶ 6gt
map! µ 5gt
map! ´ 4gt
map! ³ 3gt
map! ² 2gt
map! ± 1gt
inoremap ð <Up>
inoremap î <Down>
inoremap â <S-Left>
inoremap æ <S-Right>
map! ô :tabnew
snoremap U b<BS>U
snoremap \ b<BS>\
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> gv :call VisualSelection('gv')
map j gj
map k gk
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>CalendarH :cal Calendar(1)
nnoremap <silent> <Plug>CalendarV :cal Calendar(0)
nmap <silent> <F5> <Plug>LookupFile
xmap <S-Tab> <gv
nmap <S-Tab> v<
map <F9> :Calendar
nmap <F2> a=strftime("%c")
nmap <F10> :!ctags -R ./*
nnoremap <silent> <F3> :Rgrep
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
inoremap  <Home>
inoremap  <Left>
inoremap  <End>
inoremap  <Right>
inoremap <silent> 	 =TriggerSnippet()
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
inoremap <silent> 	 =ShowAvailableSnips()
imap  :wa
inoremap ( ()i
inoremap ) =ClosePair(')')
map ¹ 9gt
map ¸ 8gt
map · 7gt
map ¶ 6gt
map µ 5gt
map ´ 4gt
map ³ 3gt
map ² 2gt
map ± 1gt
map ô :tabnew
noremap <silent> Ý :FufTagWithCursorWord!
vmap ë :m'<-2`>my`<mzgv`yo`z
vmap ê :m'>+`<my`>mzgv`yo`z
nmap ë mz:m-2`z
nmap ê mz:m+`z
inoremap [ []i
inoremap ] =ClosePair(']')
inoremap { {}i
inoremap } =ClosePair('}')
iabbr %= %%%===================================================================
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set cindent
set clipboard=unnamed
set cmdheight=2
set completeopt=longest,menu
set encoding=utf-8
set expandtab
set fileencodings=utf-8,chinese,latin-1
set fileformats=dos,unix,mac
set guioptions=
set helplang=cn
set hidden
set history=700
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set makeprg=erl\ -make
set matchtime=2
set ruler
set runtimepath=C:\\.vim_runtime\\plugins\\autocomplete,C:\\.vim_runtime\\plugins\\fuzzyfinder,C:\\.vim_runtime\\plugins\\genutils,C:\\.vim_runtime\\plugins\\l9,C:\\.vim_runtime\\plugins\\lookupfile,C:\\.vim_runtime\\plugins\\snipMate,C:\\.vim_runtime\\plugins\\supertab,C:\\.vim_runtime\\plugins\\vimerl,C:\\.vim_runtime\\plugins\\vimwiki,~/vimfiles,D:\\Vim/vimfiles,D:\\Vim\\vim73,D:\\Vim/vimfiles/after,~/vimfiles/after,C:/.vim_runtime,C:\\.vim_runtime\\plugins\\snipMate\\after
set scrolloff=7
set selection=exclusive
set selectmode=mouse,key
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set statusline=%-3.3n\ %f\ %h%m%r%w[%{strlen(&ft)?&ft:'none'}][%{&fileformat}][%{strlen(&fenc)?&fenc:&enc}]%=0x%-8B%-14(%l,%c%V%)%<%P
set noswapfile
set switchbuf=useopen,usetab
set tabstop=4
set tags=./tags;/
set textwidth=500
set timeoutlen=500
set undodir=C:/.vim_runtime/temp_dirs/
set undofile
set viminfo='10,\"100,:20,%,n~/.viminfo
set whichwrap=,,<,>,[,],b,s,h,l
set wildignore=*.o,*~,*.pyc,*.beam
set wildmenu
set window=50
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd C:\.vim_runtime
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 install_vimrc.sh
args install_vimrc.sh
edit install_vimrc.sh
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=10
setlocal foldlevel=10
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},!^F,o,O,e,0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,),0=;;,0=;&,0=fin,0=fil,0=fip,0=fir,0=fix
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
