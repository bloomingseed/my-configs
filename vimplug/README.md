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

" Use the silver searcher Ag¬
" Require Ag installed: sudo apt-get install silversearcher-ag (https://github.com/ggreer/the_silver_searcher)
let g:ackprg = 'ag --vimgrep'
" Run rspec file
nnoremap <silent> <Leader>rs :call VimuxRunCommand("clear; rspec " .  bufname("%"))<CR>
" Run rspec test case
nnoremap <silent> <Leader>rt :call VimuxRunCommand("clear; rspec " .  bufname("%") . ":" .  line("."))<CR>
```
