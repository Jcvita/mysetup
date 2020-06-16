call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdTree'
nmap <C-n> :NERDTreeToggle<CR>
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'jaredgorski/spacecamp'

let g:NERDSpaceDelims = 1
let g:NerdCompactSexyComs = 1
let g:NerdDefaultAlign = 'left'
let g:NerdAltDelims_python = 1

set background=dark
set termguicolors
colorscheme spacecamp


call plug#end()


highlight Normal guibg=none
highlight NonText guibg=none
