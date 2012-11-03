set nocompatible               " be iMproved

"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------

silent! call pathogen#runtime_append_all_bundles()

"  ---------------------------------------------------------------------------
"  General
"  ---------------------------------------------------------------------------

let mapleader = ","
let g:mapleader = ","

" indent rules by filetype 
filetype plugin indent on

" modeline support may execute any of a number of frighteningly arbitrary Vim commands embedded in the file.
set modelines=0

" Sets how many lines of history VIM has to remember
set history=1000

" don't do any backup or swap (for recovery purposes) files 
set nobackup
set nowritebackup
set noswapfile

" reload the file if has been modified ouside of vim
set autoread

" This command switches on syntax highlighting
syntax enable
set synmaxcol=120

" utf-8 encoding for all files
set encoding=utf-8

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

" Set the terminal's title
set title

" Show 3 lines of context around the cursor.
set scrolloff=3

" does nothing more than copy the indentation from the previous line, when starting a new line. Does not interfere with other indentation settings
set autoindent

" automatically inserts one extra level of indentation in some cases. Might interfere with file type based indentation
set smartindent

" Display the mode you're in.
set showmode

" In right bottom corner (before ruler) little useful bits about actual state of keyboard input in normal are displayed.
set showcmd

" you can have unwritten changes to a file and open a new file, without being forced to write or undo your changes first.
set hidden

" lets you see what the options are when pressing tab
set wildmenu

" complete only up to the point of ambiguity
set wildmode=list:longest

" No beeping.
set visualbell

" Highlight the screen line of the cursor with CursorLine
set cursorline
" autocmd InsertEnter * highlight CursorLine guifg=white guibg=blue ctermfg=white ctermbg=blue
" autocmd InsertLeave * highlight CursorLine guifg=white guibg=darkblue ctermfg=white ctermbg=darkblue

" Improves smoothness of redrawing
set ttyfast

" Show the line and column number of the cursor position, separated by a comma. 
set ruler

" indent:	allow backspacing over autoindent
"	eol:	allow backspacing over line breaks (join lines)
"	start:	allow backspacing over the start of insert;
set backspace=indent,eol,start

" Show the status line all the time
set laststatus=2

" show line numbers relative to cursor position
set relativenumber

" automatically save your undo history when you write a file and restore undo history when you edit the file again.
set undofile

" colors
colorscheme solarized
set background=dark 
set t_Co=256

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------

" Number of spaces that a <Tab> in the file counts for. 
set tabstop=2

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=2

" It feels like	<Tab>s are being inserted, while in fact a mix of spaces and <Tab>s is used.
set softtabstop=2

" In Insert mode: Use the appropriate number of spaces to insert a <Tab>. 
set expandtab

" lines will not wrap	and only part of long lines will be displayed.
" set nowrap

" When formatting text, recognize numbered lists.
set formatoptions=n

" set the characters to show tabs, whitespaces, and end of files
set listchars=tab:>-,trail:·,eol:$

" Case-insensitive searching.
set ignorecase

" But case-sensitive if expression contains a capital letter.
set smartcase

" This means that	all matches in a line are substituted instead of one.
set gdefault

" While typing a search command, show where the pattern, as it was typed so far, matches.
set incsearch

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" When a bracket is inserted, briefly jump to the matching one.
set showmatch

"  ---------------------------------------------------------------------------
"  Status Line
"  ---------------------------------------------------------------------------

set statusline=%F%m%r%h%w[%L]%y[%p%%][%04v][%{fugitive#statusline()}]

"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------

" make tabs and trailing spaces visible when requested:
nmap <silent> <leader>s :set nolist!<CR>

" edit .vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>

" fix Vim’s horribly broken default regex “handling” by automatically inserting a \v before any string you search for.
nnoremap / /\v
vnoremap / /\v

" turn search highlight off
nnoremap <leader><space> :noh<cr> 

" search (forwards)
nmap <space> /

" search (backwards)
map <c-space> ?

" Center screen when scrolling search results
nmap n nzz
nmap N Nzz

" exit insert mode and got to end or begining of current line
imap <C-h> <ESC>^
imap <C-l> <ESC>$

" Turn off arrow keys (this might not be a good idea for beginners, but it is
" the best way to ween yourself of arrow keys on to hjkl)
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>"
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Map ESC
imap jj <ESC>

" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch between buffers with Tab
noremap <tab> :bn<CR>
noremap <C-tab> :bp<CR>

" close buffer
nmap <leader>d :bd<CR>

" close all buffers
nmap <leader>D :bufdo bd<CR>

" Switch between last two buffers
nnoremap <leader><leader> <c-^>

" Edit/View files relative to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" Saving and exit
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>
nmap <leader><Esc> :q!<CR>

" EXTERNAL COPY / PASTE
map <C-v> "+gP<CR>
vmap <C-c> "+y

" go to 
map <leader>oel :cd /home/diego/Development/obrasenlinea<CR>
map <leader>oel2 :cd /home/diego/Development/oel<CR>

" quickfix
map N :cn<CR>
map P :cp<CR>

"  Tabular

" align with the first comma
vmap <leader>a, :Tabular /^[^,]*\zs,/<CR>
" align symbols
vmap <leader>a: :Tabular /:/l1c0<CR>

"  ---------------------------------------------------------------------------
"  Function Keys
"  ---------------------------------------------------------------------------

" F3 - YankRing
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

" F4 - search and replace 

" To complete it, you only have to enter -> myoldpattern/mynewpattern<CR>
map <F4> :%s//c<Left><Left>

" extends the one above with automatically inserting the current word under the cursor into the from pattern
map <S-F4> :%s/<C-r><C-w>//c<Left><Left>

" after visualy selecting the text you just have to complete it by entering -> mynewpattern<CR>
vmap <F4> y:execute "%s/".escape(@",'[]/')."//c"<Left><Left><Left>

" F5 - to toggle GUndo tree
nnoremap <F5> :GundoToggle<CR>

" F6 - indent file and return cursor and center cursor
map   <silent> <F6> mmgg=G`m^zz
imap  <silent> <F6> <Esc> mmgg=G`m^zz

"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------

" Powerline
let g:Powerline_symbols = 'fancy'

" vim-slime
let g:slime_target = "tmux"

" ctrlp
map <leader>f :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>

" ignore following directories and files
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|log$\|tmp$\|bin$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ }

" ack-grep
nnoremap <leader>a :Ack 

" Ack settings: https://github.com/krisleech/vimfiles/wiki/Make-ack-ignore-files
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"  ---------------------------------------------------------------------------
"  Ruby/Rails
"  ---------------------------------------------------------------------------

"  ---------------------------------------------------------------------------
"  GUI
"  ---------------------------------------------------------------------------

if has("gui_running")
  set guioptions-=T " no toolbar set guioptions-=m " no menus
  set guioptions-=r " no scrollbar on the right
  set guioptions-=R " no scrollbar on the right
  set guioptions-=l " no scrollbar on the left
  set guioptions-=b " no scrollbar on the bottom
  set guioptions=aiA 
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10 " Font family and font size.
  set antialias                     " smooth fonts.
  set encoding=utf-8                " Use UTF-8 everywhere.
  set background=dark               " Background.
endif

"  ---------------------------------------------------------------------------
"  Directories
"  ---------------------------------------------------------------------------

set backupdir=~/tmp,/tmp
set undodir=~/.vim/.tmp,~/tmp,~/.tmp,/tmp

"  ---------------------------------------------------------------------------
"  Folding
"  ---------------------------------------------------------------------------
"folding settings
set foldmethod=syntax   "fold based on syntax
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Automatic fold settings for specific files.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2


"  ---------------------------------------------------------------------------
"  Misc
"  ---------------------------------------------------------------------------

" When vimrc is edited, reload it
autocmd BufWritePost .vimrc source %


"  ---------------------------------------------------------------------------
"  Filetypes
"  ---------------------------------------------------------------------------
au BufNewFile,BufRead *.less set filetype=less

au BufNewFile,BufRead *.coffee set filetype=coffee

au BufNewFile,BufRead {Gemfile,Rakefile,Thorfile,Guardfile,config.ru,.railsrc,.irbrc} set filetype=ruby
"  ---------------------------------------------------------------------------
"  Tags
"  ---------------------------------------------------------------------------
set tags+=gems.tags


"  ---------------------------------------------------------------------------
"  Nerdtree
"  ---------------------------------------------------------------------------
map <F9> :NERDTreeToggle<cr>
vmap <F9> <esc>:NERDTreeToggle<cr>
imap <F9> <esc>:NERDTreeToggle<cr>

"  ---------------------------------------------------------------------------
"  Auto align cucumber tables with Tabularize
"  ---------------------------------------------------------------------------
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
 
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

"  ---------------------------------------------------------------------------
"  populate the argument list with each of the files named in the quickfix list
"  ---------------------------------------------------------------------------

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()

function! QuickfixFilenames()
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

" TESTING inside Vim!

" turbux conf
" let g:turbux_command_prefix = 'zeus'
let g:turbux_command_rspec  = 'rspec --drb'

" vimux conf
let g:VimuxOrientation = "h"
let g:VimuxHeight = "30"

" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>

" Prompt for a command to run
map <Leader>rp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>rl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>ri :VimuxInspectRunner<CR>

" Close all other tmux panes in current window
map <Leader>rx :VimuxClosePanes<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>rq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>rs :VimuxInterruptRunner<CR>
