let mapleader=" "

" testing
" nnoremap <Leader>t :TestNearest<CR>
" nnoremap <Leader>T :TestFile<CR>
" nnoremap <Leader>TT :TestSuite<CR>

map <Leader>] :bp<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" quick semi
nnoremap <Leader>; $a;<Esc>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
" shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

" plugs
map <Leader><Tab> :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>
map <Leader>b :Buffers<CR>
" tmux navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
 
"nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
"nmap <leader>yfd <Plug>(YCMFindSymbolInDocument)
"nmap <leader>D <Plug>(YCMHover)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Remap surround to lowercase s so it does not add an empty space
xmap s <Plug>VSurround
" diagnostics
nnoremap <leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

" buffers
nmap <silent> ob :Buffers<cr>


" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" git
nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Gpush<cr>
nnoremap <Leader>gl :Gpull<cr>

" run current file
nnoremap <Leader>x :!clear && node %<cr>
" nnoremap <C-z> :make<cr>:vertical terminal <cr>
" nnoremap <C-x> :make<cr>:vertical terminal node %<cr>
" nnoremap <Leader>z :make<cr>:terminal<cr>
" nnoremap <Leader>x :make<cr>:terminal node %<cr>
" nnoremap <Leader><C-z> :make<cr>:terminal vim .<cr>
" nnoremap <Leader><C-x> :make<cr>:vertical :terminal vim .<cr>

" nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>

" Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif


set splitright
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://zsh"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>


function! s:swap_lines(n1, n2) 
  let line1 = getline(a:n1) 
  let line2 = getline(a:n2) 
  call setline(a:n1, line2) 
  call setline(a:n2, line1) 
endfunction 

function! s:swap_up() 
  let n = line('.') 
  if n == 1 
    return 
  endif 
  call s:swap_lines(n, n - 1) 
  exec n - 1 
endfunction 

function! s:swap_down() 
  let n = line('.') 
  if n == line('$') 
    return 
  endif 
  call s:swap_lines(n, n + 1) 
  exec n + 1 
endfunction 

noremap <silent> <A-s-up> :call <SID>swap_up()<CR> 
noremap <silent> <A-s-down> :call <SID>swap_down()<CR>


noremap <Leader>\ :Prettier<CR>

