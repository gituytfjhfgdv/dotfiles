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
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-rooter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'elmcast/elm-vim'
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

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
let g:coc_global_extentions = ['coc-solargraph']
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" git commitのメッセージをpaneで開く
let $GIT_EDITOR = 'nvr -cc split --remote-wait'
autocmd FileType gitcommit set bufhidden=delete

"タブ系----------------------------------
"タブ文字を半角スペースに
set expandtab
"行頭でのタブ幅
set shiftwidth=2
"行頭以外でのタブ幅
set tabstop=2
"インデント変更時にshiftwidthの倍数に丸める
set shiftround
"インデントを賢く
set smartindent
