"#= Custom Shortcut ===============================================================

"#----- Terminal Splitting -------------------
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" use alt+jkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>lh



"# Resizing window -----------------------------
function! MoveSeparator(PlusMinus)
    let num=tabpagewinnr(tabpagenr())
    let pm=a:PlusMinus
    if  num == "2"
        let pm = pm == '+' ? '-' : '+'
    end
    exec "resize " . pm . "1"
endfunction

function! MoveVerticalSeparator(PlusMinus)
    let num=tabpagewinnr(tabpagenr())
    let pm=a:PlusMinus
    if  num == "2"
        let pm = pm == '+' ? '-' : '+'
    end
    exec "vertical resize " . pm . "1"
endfunction

nnoremap <silent> <C-UP>   :call MoveSeparator("-")<CR>
nnoremap <silent> <C-DOWN> :call MoveSeparator("+")<CR>
nnoremap <silent> <C-RIGHT>   :call MoveVerticalSeparator("-")<CR>
nnoremap <silent> <C-LEFT> :call MoveVerticalSeparator("+")<CR>


map <F2> :w! <CR>
map <F4> :q <CR>

" TAB Navigations =====================================
" Tab navigation like Firefox.
nnoremap <A-o> :tabprevious<CR>
nnoremap <A-p>   :tabnext<CR>
nnoremap <C-A-p>     :tabnew<CR>
inoremap <A-o> <Esc>:tabprevious<CR>i
inoremap <A-p>   <Esc>:tabnext<CR>i
inoremap <C-A-p>     <Esc>:tabnew<CR>

" # Copy to Clipboard by yank ------------------- 
set clipboard+=unnamedplus
" let g:clipboard = {
"           \   'name': 'win32yank-wsl',
"           \   'copy': {
"           \      '+': 'win32yank -i --crlf',
"           \      '*': 'win32yank -i --crlf',
"           \    },
"           \   'paste': {
"           \      '+': 'win32yank -o --lf',
"           \      '*': 'win32yank -o --lf',
"           \   },
"           \   'cache_enabled': 0,
"           \ }

" " WSL yank support
" let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
" if executable(s:clip)
"     augroup WSLYank
"         autocmd!
"         autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
"     augroup END
" endif

" # Semicolon shortcut
inoremap <leader>; <C-o>A;

" Auto brackets and quotation mark
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


