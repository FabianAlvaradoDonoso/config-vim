"set number
"set mouse=a
"set numberwidth=1
"set clipboard=unnamed
"syntax on
"set showcmd
"set ruler
"set cursorline
"set encoding=utf-8
"set showmatch
"set sw=2
"set relativenumber

"set noswapfile

"set splitright
"set splitbelow

"so ~/.vim/plugins.vim
"so ~/.vim/plugin-config.vim
"so ~/.vim/maps.vim

"" Theme
"set termguicolors

""let g:tokyonight_style = 'night'
""let g:tokyonight_enable_italic = 1

""colorscheme tokyonight

"let g:gruvbox_contrast_dark ="hard"
"colorscheme gruvbox
"highlight Normal ctermbg=NONE
"set laststatus=2
"set noshowmode

"au BufNewFile,BufRead *.html set filetype=htmldjango
""lua require'colorizer'.setup()

"" Javascript
""autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
""autocmd bufnewfile,bufread *.ts set filetype=typescript.tsx
""autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
""autocmd bufnewfile,bufread *.js set filetype=javascript.jsx

""" Searching
"set hlsearch                    " highlight matches
"set incsearch                   " incremental searching
"set ignorecase                  " searches are case insensitive...
"set smartcase                   " ... unless they contain at least one capital letter




set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set termguicolors
set sw=2
set relativenumber
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode
set bg=dark

au BufNewFile,BufRead *.html set filetype=htmldjango

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set directory^=$HOME/.vim/tmp//
