set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'chrisbra/Colorizer'
Plugin 'scrooloose/nerdcommenter'

" ROS
" Plugin ''

" Programming
Plugin 'Townk/vim-autoclose'
" Plugin 'vim-syntastic/syntastic'
Plugin 'Chiel92/vim-autoformat'

" Theme/Interface
" Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'arcticicestudio/nord-vim'

" Git Interfaces
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" Set numberline
set number

set nowrap

" Devicons configuration 
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'

" Theme settings
syntax on
colorscheme nord
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
" set termguicolors
let g:nord_comment_brightness = 15

" Set true color support if not enabled
if has('termguicolors')
	set termguicolors
endif



" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0

" Colorizer Configuration
let g:colorizer_auto_color = 1
"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>


 let g:NERDTreeQuitOnOpen = 1
