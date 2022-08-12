" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===
"set clipboard=unnamedplus
let &t_ut=''
set autochdir
set encoding=utf-8


" ===
" === Editor behavior
" ===
set number
set exrc
set secure
set cursorline
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartcase
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=2
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
set colorcolumn=80
set updatetime=100
set virtualedit=block
noremap <silent> <LEADER>o za

" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>, ; as :
let mapleader=" "
noremap ; :
noremap : q:h

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/AppData/Local/nvim/init.vim <CR>

" Close editor Panel
" unmap <C-w>
" map <C-w> :call VSCodeNotify('workbench.action.closeActiveEditor')<CR> 

" ==================== Tab management ====================
" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tab split<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>

" Undo operations
noremap l u
" umap U

" Redo
noremap <C-r> :call VSCodeNotify('redo')<CR>

" Insert key
noremap <silent> h i
noremap <silent> H I

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g

" Folding
noremap <silent> <LEADER>o za

" Open up lazygit
noremap \g :term lazygit<CR>
noremap <c-g> :term lazygit<CR>


" ===
" === Cursor Movement
" ===
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     u
" < n   i >
"     e
"     v
noremap <silent> u k
noremap <silent> n h
noremap <silent> e j
noremap <silent> i l


" Faster in-line navigation
noremap W 5w
noremap B 5b


" ===
" === Searching
" ===
noremap K N
noremap k n

" ===
" === Command Mode Cursor Movement
" ===
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>


" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <up> 5k
noremap <down> 5j
noremap <left> 5h
noremap <right> 5l


" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>
" ===
" === Tab management
" ===
" Create a new tab with tu
" noremap tu :call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>
" Move around tabs with tn and ti
" noremap tn :call VSCodeNotify('workbench.action.previousEditor')<CR>
" noremap ti :call VSCodeNotify('workbench.action.nextEditor')<CR>



" find and replace
noremap \s :%s//g<left><left>
" unmap ==


" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('$HOME/AppData/Local/nvim/plugged')


Plug 'theniceboy/nvim-deus'
Plug 'theniceboy/eleline.vim', { 'branch': 'no-scrollbar' }
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'junegunn/vim-easy-align' " gaip= to align the = in paragraph, 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
"
" Nvim color
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
silent! color deus
hi NonText ctermfg=gray guifg=grey10
autocmd vimenter * hi Normal guibg=none ctermbg=none " transparent bg

let g:airline_powerline_fonts = 0


"=================coc.nvim=========================================
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-json',
	\ 'coc-html',
	\ 'coc-eslint',
	\ 'coc-tsserver',
	\ 'coc-vimlsp',
	\ 'coc-syntax',
	\ 'coc-translator',
	\ 'coc-explorer']
"
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#pum#next(0):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()                                                                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ?
    \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  let g:coc_snippet_next = '<tab>'

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format)
nmap <leader>f  <Plug>(coc-format)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr ;tab sp<CR><Plug>(coc-references)
nmap tt <Cmd>CocCommand explorer<CR>

" ==================== FZF ====================
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

noremap <c-d> :BD<CR>

" ===================== End of Plugin Settings =====================


" ===
" === Necessary Commands to Execute
" ===
exec "nohlsearch"


