# Vimplug
- Plugin manager
- Contributors create Vim config files and share them to a platform. Vimplug provides a shorthand to download them to a reserved folder, then call shorthand methods to load those config files (plugins) to your .vimrc.

# Reference
- Repo: https://github.com/junegunn/vim-plug

# Quick start
- This command will download the vim script into the vim's autoload folder.
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- Use vimplug methods to install and load plugins in ~/.vimrc file.
  - Download my sample.vimrc to ~/.vimrc
  - Reload .vimrc and `:PlugInstall` to install plugins.

# Commands
- PlugInstall [name ...]
- PlugUpdate [name ...]
- PlugClean [!]
- PlugStatus

# Notes
- New script to be updated:
```
call plug#begin('~/.config/nvim/bundle')
Plug 'mileszs/ack.vim'¬
Plug 'tpope/vim-commentary'¬
Plug 'jlanzarotta/bufexplorer'¬
Plug 'easymotion/vim-easymotion'¬
Plug 'preservim/vimux'
call plug#end()


" Set <leader> to Space character
let mapleader = "\<Space>"

" Save a file
nnoremap <Leader>w :w<CR>


" Map for Ack.vim
nnoremap <Leader>a :Ack!<Space>

" Use the silver searcher Ag¬
" Require Ag installed: sudo apt-get install silversearcher-ag (https://github.com/ggreer/the_silver_searcher)
let g:ackprg = 'ag --vimgrep'

" Map to access clipboard
nnoremap <c-c> "+

" Map to go prev window
nnoremap <c-w>p :tabp<cr>

" Map to Git push -fu
nnoremap <leader>gp :Git push -fu 

" Use the silver searcher Ag
let g:ackprg = 'ag --vimgrep'

" Copy file path and current line number to clipboard

function! WhereAmI()
	redir @+ | echo @% . ":" . line(".") | redir END
endfunction

nnoremap <c-w>ami :call WhereAmI()<cr>

" Show cursor highlight vertically
set cursorcolumn

" Run rspec file
nnoremap <silent> <Leader>rf :call VimuxRunCommand("bundle exec rspec " .  bufname("%"))<CR>
" Run rspec current line
nnoremap <silent> <Leader>rl :call VimuxRunCommand("bundle exec rspec " .  bufname("%") . ":" .  line("."))<CR>


" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
"let g:EasyMotion_startofline = 0 " keep cursor column when JK motion


```
