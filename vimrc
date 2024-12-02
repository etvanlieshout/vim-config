" vimrc

" basic settings
set number
set termguicolors
set colorcolumn=81,82,91,101
set autoindent smartindent
set cursorline "mark current line

" disable auto-insertion of comment leaders
set formatoptions-=r " ENTER/<CR>
set formatoptions-=o " O

" default tab behavior: 8 spaces
set shiftwidth=8 tabstop=8 softtabstop=8
set noexpandtab

" AUTOINSTALL Vim-Plug
" Uncomment & run to install, then comment out
"let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
"if empty(glob(data_dir . '/autoload/plug.vim'))
"  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" Automatic Vim-Plug mgmt; useful if using many plugins
"Run PlugInstall if there are missing plugins
"autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \| PlugInstall --sync | source $MYVIMRC
"\| endif
" Manual plugin mgmt:
" :PlugInstall
" :PlugUpdate
" :PlugDiff
" :PlugClear


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline' "Slick status line
Plug 'sheerun/vim-polyglot' " Improved syntax parsing
Plug 'ghifarit53/tokyonight-vim' "tokyonights colorscheme
"Plug 'junegunn/seoul256.vim' "Seoul city colorscheme
Plug 'preservim/nerdtree' "nerdtree file browser
call plug#end()
" filetype indent off " plug#end() actives this, so deactivate if unwanted

" tokyonight colorscheme settings
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
let g:tokyonight_disable_italic_comment = 1
let g:airline_theme = "tokyonight"

colorscheme tokyonight

" FileType-specific settings
autocmd FileType c  setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python setlocal shiftwidth=3 tabstop=3 softtabstop=3 expandtab

" MISC NOTES:
" For TokyoNights colorscheme: I changed the comments coloring in the file
" plugged/tokyonight-vim/colors/tokyonight.vim: lines 302 & 303 from default
" grey to blue to more readable when using the nightshift/redshift filer.
