syntax on
set expandtab
set ts=4
set sw=4
set hlsearch
set incsearch
set ignorecase
set smartcase
set ruler
colorscheme desert
set bg=dark

" Set wrap to play nicely with git. See the link below for a discussion on this
" http://stackoverflow.com/questions/2119942/how-to-wrap-git-commit-comments/2120040#2120040
au FileType gitcommit setlocal tw=72

" use the mouse
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
