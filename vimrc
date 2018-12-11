"Plugins directory
call plug#begin('~/.vim/plugged')

"Plugins
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"Initialize plugin system
call plug#end()

"Enabled syntax highlihting
syntax enable

"Tell how our background color looks like
set background=dark

"Set color scheme
colorscheme solarized
colorscheme monokai_pro

"Use 256 colors in terminal
set t_Co=256

"Hide buffers instead of closing them
set hidden

"Show line numbers
set relativenumber
set number

"Highlight searchresult
set hlsearch

"Indentation settings
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

"Show whitespace
set listchars=eol:¬,tab:>·,trail:·,extends:>,precedes:<
set list

"Make FZF respect gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"SYNTASTIC WIP
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_javascript_checkers=['eslint']

"Enable JSDoc highlighting for vim-javascript
let g:airline_powerline_fonts=1
let g:javascript_plugin_jsdoc=1

"Key bindings
map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
