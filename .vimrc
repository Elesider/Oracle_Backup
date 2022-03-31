" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
 \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

"Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
"This is the vim-plug manager
call plug#begin('~/.vim/plugged')
"This part add the plugins 
Plug 'Shougo/neocomplcache' " This is for the autocomplete Not use
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }  "This is for FolderTree It is now gradually replaced by the nnn 

Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs' " This is for the auto-pair. 
Plug 'mcchrish/nnn.vim' "This is for the file explorer for the files.nnn.vim note.
Plug 'godlygeek/tabular' "This is for vim-markdown
Plug 'preservim/vim-markdown' "This is for markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

"Plug 'shougo/deoplete.nvim " This is the new autocomple but needs update:
call plug#end()

" Rainbow parentness setup
let g:rainbow_active = 1
let g:rainbow_load_separately = [
  \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
  \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
  \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
  \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
  \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" This is definition of the shorcut.
" map <F5> :NERDTreeToggle<CR>   
"Can use Nnnpicker and NnnExplorer.
map <F5> :NnnExplorer<CR>
let g:nnn#layout = { 'left':'~40%'} "This is configure the nnn layout when logout.
let g:nnn#explorer_layout = { 'left':'~40%'} "This is configure the nnn layout when logout.

"The noremap is to avoid recurssion such as nmap: dd 0<esc> jddk. Check here
"dd will enter the infinite loop.
map <F4> : set nu!<BAR>set nonu?<CR>
imap jj <Esc>
imap jk <Esc>
imap kk <ESC>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
imap <C-a> <Esc>^i
imap <C-e> <Esc>$i
imap <C-z> <Esc>u
inoremap <C-q> <Esc> :wq <CR> 
" Ctrl w is fo r delete previous word. Ctrl d is to delete next word.
imap <C-d> <Esc>lcaw
" Ctrl h and l is to move
inoremap <C-b> <Esc>bi
inoremap <C-l> <Esc> wi
" Tis for write and save
nnoremap <C-q> :q <CR>
inoremap <C-q> <Esc> :wq <CR>

" The ! is to run bash command.ctrl+shift+v is the paste.
"vnoremap <C-C> :w !xclip -i -sel c<CR><CR>
" vnoremap <C-v> :w !xclip -o -sel c<CR><CR>

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
inoremap <expr><TAB> pumvisible()?"\<C-n>" : "\<TAB>"


" 自動縮排：啟用自動縮排以後，在貼上剪貼簿的資料時排版可能會亂掉，這時可以手動切換至貼上模式 :set paste 再進行貼上。
set ai

" 啟用暗色背景模式。
set background=dark

" Enable the syntax for the System
syntax on


" 啟用行游標提示。
set cursorline

" 文字編碼加入 utf8。
set enc=utf8

" 標記關鍵字。
set hls

" 只在 Normal 以及 Visual 模式使用滑鼠，也就是取消 Insert 模式的滑鼠，
set mouse=nv
"set copy and paste in vim 
set mouse=a
" 顯示行號。
set number

" 顯示相對行號。
set relativenumber

" 搜尋不分大小寫。
set ic

" 使用空白取到 Tab。
set expandtab

" 自訂縮排 (Tab) 位元數。
set tabstop=2
set shiftwidth=2

" 字數過長時換行。
set wrap
"set nowrap     " 不換行。

" 關閉嗶嗶聲。
set noeb  

" 自動切換當前目錄。
set autochdir

" 捲動時保留底下 3 行。
set scrolloff=3

" 摺疊 Folding。
set foldenable
set foldmethod=indent
set foldcolumn=1
set foldlevel=5

" 在 fish 裡相容 Vim 裡的 Neobundle。
set shell=/bin/bash

" 高亮當前行 (水平)。
set cursorline 
autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

" 高亮當前列 (垂直)
set cursorcolumn 
"autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
"autocmd InsertLeave * highlight CursorColumn ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=yellow gui=NONE
autocmd InsertEnter * highlight CursorColumn ctermfg=Yellow   ctermbg=NONE    cterm=bold 
autocmd InsertLeave * highlight CursorColumn ctermfg=None  ctermbg=NONE  cterm=bold

"Smartindent for the new line. It is that smart...
set smartindent

" Set visual bell instead of ring. 
set visualbell

" set the cmd windows
set cmdheight=1

" autocomplete dropdown list colorscheme
hi Pmenu ctermfg=0 ctermbg=7
hi PmenuSel ctermfg=7 ctermbg=4

"key mapping for ctrl z instead of u: 

" Turn paste mode on/off using <F10> then use shift+insert key to paste in
" vim.This is replaced by directly use ctrl+shift+v
set pastetoggle=<F10>

" Use the ctrl+w and nnn for the split screen.

" Set up Character display issue
set encoding=utf-8
"set termencoding=utf-8

"In case of future lead key for future extension.
let mapleader=","
noremap <leader>n :noh<CR>
nnoremap<leader>s :w<CR>: source % <CR>
nnoremap <leader>b :shell <CR>
vnoremap <silent><Leader>y "yy <Bar> :call system('xclip', @y)<CR><CR>
noremap <Leader>y "yy <Bar> :call system('xclip', @y)<CR><CR>
noremap <Leader>y "*y
noremap <Leader>Y "+Y

"Two commandtogether if use bash should be add !.
"

" Help vertical setup Window in VIM
autocmd FileType help wincmd H|exe 10. "wincmd <"
" autocmd FileType help exe 1. "wincmd <"

" For call extern compiler for the files
" 1. VIM Registers
" Registers/ctrl+R/cmdline-special/filename-modifiers
" Debug Register   :reg %   or  :put %  .  
" 2.Filename-modifier and cmdline special character
" Debug the special ch"%:p:h") This is to cut the current highlighted line.
"vmap <F7> :w !xclip -selection clipboard<CR><CR>
" The ! is to run bash command.ctrl+shift+v is the paste.
"vnoremap <C-C> :w ! xclip -i -sel <CR><CR>
" vnoremap <C-v> :w !xclip -o -sel c<CR><CR>
"set clipboard=unnamed
"set the foregroundht group is how Vow Vim setht group is how Vim sdd
"ht group is how Vim setht group is how Vim setht group is how Vim s:hve foreground (vtereadability i try 
"vnoremap <C-C>  "yy<bar>w !xclip -i -sel clipboard<CR><CR>
"vnoremap <silent><Leader>y "yy <Bar> :call system('xclip -xclipboard:w', @y)<CR>
"There are two clipboard."* and "+. If we choose unmaned, then we only use      this is the problem                                                                
"one. Two register value are the same value if choose clip to be unnamed. 
set clipboard=unnamed


"Interactive with the bash terminal

"Help: :h terminal  :h key-notation  | leader 

"1.Open the vertial split to terminal i
noremap<leader>v :vert rightb term <CR>
"2. Reset the termoinkey CTRL-W is used for delete in the terminal. It is has
"issues.
"set termwinkey=<C-L>

