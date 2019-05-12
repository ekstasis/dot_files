" nocompatible:  Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype plugin on
syntax on
syntax enable

" ** Plugins **

" vim-plug
"
" install if necessary
" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif
 
" VimWiki
" 
" call plug#begin('~/.vim/plugged')
" Plug 'vimwiki/vimwiki'
" List ends here. Plugins become visible to Vim after this call.
" call plug#end()

" let g:vimwiki_list = [{'path': '~/vimwiki/main', 'ext': '.md', 'syntax': 'markdown'},
            \ {'path': '~/vimwiki/bot', 'ext': '.md', 'syntax': 'markdown'},
            \ {'path': '~/vimwiki/ml', 'ext': '.md', 'syntax': 'markdown'}]

" :nmap <Leader>wu <Plug>VimwikiDeleteLink

" Change cursor shape between insert and normal mode in iTerm2.app
" if $TERM_PROGRAM =~ "iTerm.app"
"     let &t_SR = "\<esc>]50;CursorShape=2\x7" " Underline in replace mode
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
" endif

set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching

" my additions
set wildmenu
set wildmode=list:longest
set guicursor&

" tabs
set tabstop=4
set shiftwidth=4
set expandtab

" appearance
set wrap
set linebreak
set guifont=Menlo\ Regular:h18

set autoindent
set backupdir=~/.vim/backup/
set relativenumber
set number
set laststatus=2

au BufRead,BufNewFile *.fountain	set filetype=fountain

" Start scrolling three lines before the horizontal window border
" set scrolloff=3
"
" Following two already taken care of by filetype plugin on above?
" filetype on
" filetype indent on

