colorscheme murphy

set number
set autoindent
set cindent
set showmatch
set guifont=DejaVu\ Sans\ Mono\ 12

set expandtab
set tabstop=2
set shiftwidth=2


" map ctrl+space to omnicompletion
"inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
"\ "\<lt>C-n>" :
"\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
"\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
"\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
"imap <C-@> <C-Space>

" inoremap	{	{}<Left>
" inoremap	{<CR>	{<CR>}<Up><CR>

inoremap	<//	</<C-x><C-o><Esc>bb<Right>i
inoremap	</<CR>	<CR></<C-x><C-o><Up><CR><Tab>



"
" Omnicomplete
"

imap <C-Space> <C-x><C-o>
" remap C-Space for terminal...
if !has("gui_running")
	imap <C-@> <C-SPACE>
endif




"
" BufExplorer
"
"map <C-Tab> :BufExplorer<CR>
"


map <C-Tab> :CommandTBuffer<CR>
map <C-S-Tab> :CommandT<CR>
