" Forget being compatible with good ol' vi
set nocompatible

" Begin Vundle init
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

silent! py3 pass

if exists(':Plugin')
  " let Vundle manage Vundle - must be first!
  " use commands PluginInstall, PluginUpdate, PluginClean
  Plugin 'gmarik/vundle'

  " Repeat.vim sets up bindings other plugins can use to make their commands
  " repeatable with the . command.
  " https://github.com/tpope/vim-repeat
  Plugin 'tpope/vim-repeat'

  " Fugitive is a highly-capable Git wrapper for Vim.
  " https://github.com/tpope/vim-fugitive
  Plugin 'tpope/vim-fugitive'

  " Make CTRL-A / CTRL-X work on dates like 2000-03-26
  " https://github.com/tpope/vim-speeddating
  Plugin 'tpope/vim-speeddating'

  " Surround.vim lets you add/change/remove surrounding chars and tags
  " https://github.com/tpope/vim-surround
  Plugin 'tpope/vim-surround'

  " Eunuch.vim adds wrappers for various Unix commands
  " e.g., :Remove will rm the current file & delete the buffer
  "       :Move will rename both the buffer and file simultaneously
  " https://github.com/tpope/vim-eunuch
  Plugin 'tpope/vim-eunuch'

  " Commentary.vim provides commenting for many languages
  " Use gcc to comment out a line (takes a count), gc to comment out the
  " target of a motion (for example, gcap to comment out a paragraph),
  " gc in visual mode to comment out the selection, and gc in operator
  " pending mode to target a comment.
  " https://github.com/tpope/vim-commentary
  Plugin 'tpope/vim-commentary'

  " Improves output of ga, which shows character codes for the char
  " under the cursor. Supports HTML entities & emoji...
  " https://github.com/tpope/vim-characterize
  Plugin 'tpope/vim-characterize'

  " Buffergator lists, selects and switches buffers
  " Use `<Leader>b` (typically: `\b`) to open a window listing all buffers. In this
  " window, you can use normal movement keys to select a buffer and then:
  "   - <ENTER> to edit the selected buffer in the previous window
  "   - <C-V> to edit the selected buffer in a new vertical split
  "   - <C-S> to edit the selected buffer in a new horizontal split
  "   - <C-T> to edit the selected buffer in a new tab page
  "
  " https://github.com/jeetsukumaran/vim-buffergator
  Plugin 'jeetsukumaran/vim-buffergator'

  " A Vim plugin which shows a git diff in the gutter (sign column) and
  " stages/reverts hunks. Use [c and ]c to navigate changes.
  " https://github.com/airblade/vim-gitgutter
  Plugin 'airblade/vim-gitgutter'

  " NERDTree is a tree explorer plugin for vim.
  " Open with <leader>n
  " https://github.com/scrooloose/nerdtree
  Plugin 'scrooloose/nerdtree'

  " Tabular.vim is a plugin that aligns text by some pattern, e.g.:
  " :Tab /,
  " will align lines by their commas. We have some mappings set up later, like
  " <leader>t: to align on symbals and <leader>t= to align on assignment.
  " https://github.com/godlygeek/tabular
  Plugin 'godlygeek/tabular'

  " Provides extra text objects for things like pairs, quotes, separators and
  " arguments.
  "   Pairs      i( i) ib i{ i} iB i[ i] i< i> it
  "   Quotes     i' i" i`
  "   Separators i, i. i; i: i+ i- i= i~ i_ i* i# i/ i| i\ i& i$
  "   Argument   ia
  "   All also work with 'a' instead of 'i' (An vs In). Can also insert an 'n'
  "   or 'l' to target the 'next' object, e.g., vin]
  " https://github.com/wellle/targets.vim
  Plugin 'wellle/targets.vim'

  " endwise.vim: wisely add 'end' in ruby, endfunction/endif/more in vim
  " script, etc.
  " https://github.com/tpope/vim-endwise
  Plugin 'tpope/vim-endwise'

  " Syntax checker for many languages
  " https://github.com/scrooloose/syntastic
  Plugin 'scrooloose/syntastic'

  " Simplifies the transition between multiline and single-line code
  "   gS to split a one-liner into multiple lines
  "   gJ (with the cursor on the first line of a block) to join a block into a
  "   single-line statement.
  " https://github.com/AndrewRadev/splitjoin.vim
  Plugin 'AndrewRadev/splitjoin.vim'

  " Vim Airline improves the look & functionality of the statusline.
  " It's so fancy!
  " https://github.com/bling/vim-airline
  Plugin 'bling/vim-airline'

  " Language syntax support
  "Plugin 'vim-ruby/vim-ruby'
  "Plugin 'kchmck/vim-coffee-script'
  Plugin 'pangloss/vim-javascript'
  Plugin 'tpope/vim-markdown'
  Plugin 'tpope/vim-git'
  "Plugin 'tpope/vim-haml' "includes Haml, Sass and SCSS
  "Plugin 'elixir-lang/vim-elixir'
  Plugin 'ap/vim-css-color'
  Plugin 'chrisbra/csv.vim'
  Plugin 'darfink/vim-plist'
  Plugin 'python-mode/python-mode'

  " Colorschemes
  Plugin 'altercation/vim-colors-solarized.git'

  " Some additional plugins
  Plugin 'scrooloose/nerdcommenter'
  "Plugin 'powerline/powerline'
  "Plugin 'lervag/vim-latex'

  " Plugins to only load on OS X
  if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin\n"
      " Suggestion and Tab completion
      " Requires a locally-compiled library; see docs. Note this will work
      " fine on Linux, but disabling there since we mostly code on OS X and it
      " can be a hassle to compile the dependent libraries.
      " https://github.com/Valloric/YouCompleteMe
      Plugin 'valloric/youcompleteme'
    endif
  endif

  call vundle#end()
  filetype plugin indent on     " required!
endif

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Turns on gitgutter signs
let g:gitgutter_signs = 1
let g:Powerline_symbols = 'fancy'

" Display line numbers
set number

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" Set visual bell
set vb

" Hide the mouse pointer while typing
set mousehide

" When the page starts to scroll, keep the cursor 8 lines from
" the top and 8 lines from the bottom
set scrolloff=8

" Make E the reverse of e, rather than deliminate by whitespace
nmap E ge

" A running gvim will always have a window title, but when vim runs within an
" xterm, by default it inherits the terminal’s current title.
set title

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

set autoread           " reload unchanged buffers when file changed outside vim
set fileformats+=mac   " should already be the default when compiled on mac

" Write swap and backup files in the event of a crash or accident
set swapfile
set directory=$HOME/.vim/.backup
set backup
set backupdir=$HOME/.vim/.backup

" Extend our undoable steps and preserve over restart (if available)
if has('persistent_undo')
  set undodir=$HOME/.vim/undo
  set undofile
  set undoreload=10000
end
set undolevels=10000

set autoindent   " preserve indent level on newlines
set tabstop=4    " a tab is four spaces
set shiftwidth=4 " an autoindent (with <<) is four spaces
set expandtab    " use spaces, not tabs
set smarttab     " use shiftwidth/tabstop based on context

set incsearch     " incremental searching
set nohlsearch    " don't highlight matches
set ignorecase    " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter

set laststatus=2  " always show the status line
set ruler         " show cursor position (overridden by statusline)
set showcmd       " show partial command in bottom-right
set showtabline=1 " Show tabline only when more than one tab exists

" Line numbering
" Relativenumber treats the current line as line 0 and is helpful for 
" motions
if exists('+relativenumber')
  set relativenumber
end
" Setting number after Relativenumber replaces the '0' with the true number
set number

set nowrap        " don't wrap lines (we map leader-W to toggle)
set linebreak     " when wrapping, wrap at word boundaries (vs last char)
if exists('+breakindent')
  set breakindent " preserves the indent level of wrapped lines
  set showbreak=↪ " illustrate wrapped lines
  set wrap        " wrapping with breakindent is tolerable
endif
" When on first/last char in a line, allow left/right to navigate
" through to the prev/next line.
set whichwrap+=<,>,h,l

" change the cursor shape depending on mode
" see: http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Set colorscheme
if has("gui_running")
  set background=dark
  colorscheme solarized
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quick ESC
" Some people map jk for this, but it makes Dijkstra sad.
imap kj <ESC>
imap jk <ESC>

" Allow writing via sudo
cnoremap w!! w !sudo tee > /dev/null %

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Stop that stupid window from popping up
map q: :q

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LEADER MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let spacebar double as our leader, for great justice
nmap <space> <leader>
nmap <space><space> <leader><leader>
" xmap includes Visual mode but not Select mode (which we don't often use, but
" if we did we'd expect hitting space to replace the selected text with a
" space char).
xmap <space> <leader>

" Reload our .vimrc
nmap <leader>~ :source ~/.vimrc<CR>:redraw!<CR>:AirlineRefresh<CR>:echo "~/.vimrc reloaded!"<CR>

" Write file
nmap <leader>w :w<CR>

" Copy & paste to system clipboard
vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE TYPES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some file types should wrap their text
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=78
  set nolist
endfunction

" Make sure all markdown files have the correct filetype set and setup wrapping
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
au FileType markdown call s:setupWrapping()
au FileType markdown setlocal ts=4 sts=4 sw=4

" enable spell checking on certain files
autocmd BufNewFile,BufRead COMMIT_EDITMSG set spell

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript


" Make coding better
" inoremap { {<CR><BS>}<Esc>O
" inoremap \{ {

if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif
