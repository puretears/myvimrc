set nocompatible					" Make vim behave more useful way
so ~/.vim/plugins.vim




"---------------------- Backup and tmp fles --------------------
set backup                          " Backup current file
set writebackup                     " Delete old backup
" Directories for backup files
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" No backup in these directories
set backupskip=/tmp/*,/private/tmp/*
" Directories for the swp files
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp




"---------------------- Themes and color --------------------
set t_CO=256						" Number of colors in terminal
colorscheme atom-dark-256			" My Vim TUI color scheme	
syntax on




"---------------------- Mapping --------------------
let mapleader=','                   " Change leader to comma
" ,ev to open vimrc in a new tab
nmap <leader>ev :tabedit ~/.vimrc<CR>
nmap <D-1> :tabn1<CR>
nmap <D-2> :tabn2<CR>
nmap <D-3> :tabn3<CR>
nmap <D-4> :tabn4<CR>
nmap <D-5> :tabn5<CR>
nmap <D-6> :tabn6<CR>




"---------------------- Autocmd --------------------
augroup autosourcing    
    " Clear all autocmds in this group
    autocmd!
    autocmd BufWritePost .vimrc so %
    if has("gui_running")
        so ~/.gvimrc
    endif
augroup END




"---------------------- Searching --------------------
set hlsearch                        " Highlight search result
set incsearch                       " Search as characters in real time
" Turn off search highlight
nnoremap <leader><space> :noh<CR>




"---------------------- Indentation --------------------
set tabstop=4                       " Number of spaces per tab
set shiftwidth=4                    " Indent 4 columns for << and >> operations
set expandtab                       " Replace tab with space
set autoindent                      " Indent at the same level of the previous line




"---------------------- UI Tweaks --------------------
set linespace=16                    " Set the line height
set number                          " Show line numbers
set cursorline                      " Highlight current line
filetype indent on                  " Load filetype-specific indent file
set noerrorbells                    " Disable bell for errors that display messages
set vb t_vb=                        " Disable bell for errors that do not display messages

set laststatus=2                    " Always display status line
set ruler                           " Display the line and column of the cursor in status bar
set showmatch                       " Highlight matching {[()]} automatically
set wildmenu                        " Visualize autocomplete menu for command
"set scrolljump=5                    " Lines to scroll when cursor leaves screen
"set scrolloff=3                     " Minium lines to keep above and below the cursor
