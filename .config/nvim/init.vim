"------------------------------------------------------------
"              _            _
"   _ __   ___| |_ ___ _ __| | _____  ___ _ __   __ _ _ __
"  | '_ \ / _ \ __/ _ \ '__| |/ / _ \/ _ \ '_ \ / _` | '_ \
"  | |_) |  __/ ||  __/ |  |   <  __/  __/ | | | (_| | | | |
"  | .__/ \___|\__\___|_|  |_|\_\___|\___|_| |_|\__,_|_| |_|
"  |_|
"      
"  peterkeenan.co.uk // galambborong
"------------------------------------------------------------
set nocompatible
 
filetype indent plugin on
 
syntax on

"------------------------------------------------------------
"Plugin stuff

call plug#begin()

Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'rhysd/git-messenger.vim'
" Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'drewtempelmeyer/palenight.vim'

"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'

"" Markdown-related plugins
" 
" Plug 'plasticboy/vim-markdown'
"
" Plug 'dhruvasagar/vim-table-mode'
" This one seems more to do with Markdown
""

call plug#end()

"------------------------------------------------------------
" VimWiki stuff

"let g:vimwiki_list = [{'path': '~/Documents/VimWiki/'}]
"let g:vimwiki_table_mappings=0
"let g:vimwiki_table_auto_fmt=0

"------------------------------------------------------------

"autocmd vimenter * NERDTree

set background=dark

set hidden
set textwidth=110
set wrap linebreak
set backupdir=~/.local/share/nvim/backup

" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
"------------------------------------------------------------
" Usability options 
"

set ffs=unix
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
"set mouse=a
set mouse=nicr
 
" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2
 
set number
set relativenumber  
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Set a lighter backdround colour, so comment text is readable!

" Changing comment text colour (default is unreadable against black)
"hi Comment ctermfg=LightBlue

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
 
"------------------------------------------------------------
" Indentation options 
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4
 
 
"------------------------------------------------------------
" Mappings 
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
 
"------------------------------------------------------------
