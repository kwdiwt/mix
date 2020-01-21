call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'posva/vim-vue'
    " Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

let mapleader=','

" vim-vue
let g:vue_pre_processors = 'detect_on_enter'

" airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z']]
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0

" ctrlp
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_open_new_file = 't'
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|\.idea|node_modules|vendor|dist)$',
  \ 'file': '\v\.(exe|so|dll|png|jpg|jpeg|svg|gif|webp)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" nerdtree
map <C-e> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git', '\.pyc$', '__pycache__', 'venv', 'node_modules']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set number
set expandtab
set ignorecase smartcase
set tabstop=2
set shiftwidth=2
set clipboard+=unnamedplus
set scrolloff=10
colorscheme peachpuff
hi Search ctermbg=3 ctermfg=black
hi Visual ctermbg=black ctermfg=yellow
hi MatchParen ctermbg=black

inoremap <c-s> <ESC>:update<CR>
nnoremap <silent> <C-S> :<C-u>update<CR>
" nmap <c-e> :mksession!<CR>
nmap <c-h> gT
nnoremap <C-l> gt
" autocmd FileType html,javascript,css setlocal shiftwidth=2 tabstop=2
" autocmd BufReadPost *.styl set filetype=css
" autocmd BufEnter * :syntax sync fromstart
