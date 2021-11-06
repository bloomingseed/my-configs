call plug#begin('~/.config/nvim/bundle')

Plug 'vim-airline/vim-airline'
"Plug 'morhetz/gruvbox'

call plug#end()

" configure gruvbox
"colorscheme gruvbox
"set background=light

" Display tab char as '>' and the space it occupies as '·'
set list
"set listchars=tab:>·
set listchars=eol:¬,tab:▸\

" Replace (expand) each typed tab character to 4 spaces
set expandtab
" Use tabstop=2 since using ruby coding convention
set tabstop=2
set shiftwidth=2
" Smartly remove tab pattern as one character (quick delete 4 spaces as tab)
set smarttab

" Remove delay when switching modes: insert to normal
set ttimeoutlen=0

