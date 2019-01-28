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
"Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kaicataldo/material.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'chriskempson/base16-vim'


" Git Interfaces
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" Set numberline
set number relativenumber

"set nowrap

" Devicons configuration 
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='material'

" Theme settings
syntax on
"colorscheme wal
colorscheme material
hi Normal guibg=NONE ctermbg=NONE

"let g:nord_italic = 1
"let g:nord_italic_comments = 1
"let g:nord_uniform_status_lines = 1
"let g:nord_uniform_diff_background = 1
"set termguicolors
"let g:nord_comment_brightness = 15

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

let g:material_theme_style = 'default'

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
