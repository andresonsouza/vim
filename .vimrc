"### exibe numeração de linhas
set nu!

"### habilita o salvamento com o atalho ctrl+s
"é necessário inserir o comando <tty -ixon> nos arquivos .zshrc ou .bashrc antes para poder funcionar.
noremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>l
vnoremap <C-s> <ESC>:w<CR>

"### Exibe uma mensagem identificando o tipo de arquivo que está sendo aberto.
autocmd BufNewFile *.html echo "Esse é um arquivo HTML"

"### Uso de funções

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


