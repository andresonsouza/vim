set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'johngrib/vim-game-code-break'

call vundle#end()
filetype plugin indent on

"### exibe numeração de linhas
set nu!

"### habilita o salvamento com o atalho ctrl+s
"é necessário inserir o comando <tty -ixon> nos arquivos .zshrc ou .bashrc antes para poder funcionar.
noremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>l
vnoremap <C-s> <ESC>:w<CR>

"### Exibe uma mensagem identificando o tipo de arquivo que está sendo aberto.
autocmd BufNewFile *.html echo "Esse é um arquivo HTML"

"### gera um arquivo com uma estrutura html

function! GenerateHTML()
 
call append(0, '<!DOCTYPE html>')
call append(1, '<html>')
call append(2, '  <head>')
call append(3, '    <meta charset="utf-8">')
call append(4, '    <title>Page Title</title>')
call append(5, '  </head>')
call append(6, '  <body>')
call append(7, '')
call append(8, '  </body>')
call append(9, '</html>')
endfunction

command  GenerateHTML call GenerateHTML()

"air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:neocomplete#enable_at_startup = 1

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

syntax on
color dracula

filetype plugin indent on
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos = "left"
autocmd vimenter * wincmd p
let NERDTreeQuitOnOpen = 1

set encoding=utf8
let g:airline_powerline_fonts = 1
