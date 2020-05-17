set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
filetype off
set number

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'

Plugin 'ludovicchabant/vim-gutentags'

Plugin 'majutsushi/tagbar'

Plugin 'rust-lang/rust.vim'
Plugin 'lervag/vimtex'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'

Plugin 'valloric/youcompleteme'
Plugin 'vimwiki/vimwiki'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chrisbra/colorizer'
call vundle#end()
""vimtex stuff
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_latexmk = {'backend' : 'nvim'}

""ULTISNIPS

let g:UltiSnipsExpandTrigger = '<cr>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsListSnippets = '<C-l>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips']
let g:UltiSnipsEditSplit = 'horizontal'

""YOU COMPLETE ME
let g:ycm_key_list_select_completion=['<tab>', '<c-n>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<c-p>']
let g:SuperTabDefaultCompletionType = '<C-tab>'

filetype plugin indent on
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set background=dark

""SYNTASTIC

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = ['syntastic-checkers-c']
let g:syntastic_h_checkers = ['syntastic-checkers-c']
let g:syntastic_cpp_checkers = ['syntastic-checkers-cpp']

let g:colorizer_auto_filetype='css,html,xml,sh,h,c'

let g:airline_theme='base16'
syntax on
colorscheme onedark

set clipboard+=unnamedplus
nmap <F8> :Tagbartoggle<CR>
