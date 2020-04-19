set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" シンタックスハイライト
set term=xterm-256color
syntax on

" 行数を表示する
set number
" 開いてるファイル名を表示
set title

" 不要な行末の空白を削除する
autocmd BufWritePre * :%s/\s\+$//ge

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required'

" 文字色
colorscheme evening

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

let g:ale_fixers = {
      \ 'ruby': ['rubocop', 'haml_lint'],
      \ }

" rubocop haml-lint
" NeoBundle 'ngmy/vim-rubocop'
" NeoBundle 'scrooloose/syntastic.git'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_ruby_checkers=['rubocop', 'mri']
" let g:syntastic_haml_checkers = ['haml_lint']
" let g:syntasticmodemap = { 'mode': 'active', 'active_filetypes': [
"  \ 'ruby', 'javascript','coffee', 'scss', 'html', 'haml', 'slim', 'sh',
"  \ 'spec', 'vim', 'zsh', 'sass', 'eruby'] }
" let g:syntastic_error_symbol='✗'
" let g:syntastic_style_error_symbol = '✗'
" let g:syntastic_warning_symbol = '⚠'
" let g:syntastic_style_warning_symbol = '⚠'
