" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" stdpath('data')は、unixで、~/.local/share/nvim をさす
call plug#begin(stdpath('data') . '/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jacoborus/tender.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
colorscheme nord
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tender'
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
let g:better_whitespace_ctermcolor = 'DarkGray'
set updatetime=100
" pythonのパスを通す
let g:python_host_prog = $HOME . '/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim3/bin/python'

"nodejsとrubyのパス
let g:ruby_host_prog = $HOME . '/.rbenv/versions/2.6.5/bin/neovim-ruby-host'
let g:node_host_prog = '/usr/local/bin/neovim-node-host'
let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'ruby': ['rubocop'],
  \ }
let g:ale_fix_on_save = 1
