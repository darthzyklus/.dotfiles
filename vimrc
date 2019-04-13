set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'scrooloose/nerdtree'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'othree/yajs.vim'
  Plugin 'maxmellon/vim-jsx-pretty'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'posva/vim-vue'
  Plugin 'mattn/emmet-vim'
  Plugin 'mhinz/vim-signify'
  Plugin 'junegunn/fzf.vim'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set encoding=UTF-8
set background=dark

set ruler
set numberwidth=3

set expandtab tabstop=2 shiftwidth=2
autocmd VimEnter * set autoindent smartindent

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight CursorLineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


 
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set nonumber norelativenumber
augroup END

augroup cursorlinetoogle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set cursorline
  autocmd BufLeave,FocusLost,InsertEnter   * set nocursorline
augroup END

nmap <C-N> :set invnumber invrelativenumber<CR>
"nmap <C-W> :NERDTreeFocus<CR>
nmap <C-o> :NERDTreeToggle<CR>

nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

nnoremap <C-H> <C-W><C-H> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>


vmap <Tab> >gv
vmap <S-Tab> <gv

"Auto complete pairs
inoremap ` ``<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Move current line
nnoremap <S-C-j> :m .+1<CR>==
nnoremap <S-C-k> :m .-2<CR>==
inoremap <S-C-j> <Esc>:m .+1<CR>==gi
inoremap <S-C-k> <Esc>:m .-2<CR>==gi
vnoremap <S-C-j> :m '>+1<CR>gv=gv
vnoremap <S-C-k> :m '<-2<CR>gv=gv


let g:user_emmet_leader_key=','
