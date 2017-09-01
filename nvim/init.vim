" Include vim syntax/etc {{{1
set rtp^=/usr/share/vim/vimfiles/

" Vundle {{{1
" Setup {{{2
filetype off

set rtp+=$XDG_DATA_HOME/nvim/bundle/Vundle.vim
call vundle#begin(expand('$XDG_DATA_HOME').'/nvim/bundle')

" Use vundle to manage plugins
Plugin 'VundleVim/Vundle.vim'

" Plugins {{{2
" These add extensive features to vim, not just syntax highlighting or
" coloschemes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'simnalamburt/vim-mundo'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'dcbaker/vim-abook'
Plugin 'jamessan/vim-gnupg.git'
Plugin 'vim-scripts/Align.git'
Plugin 'chrisbra/NrrwRgn'
Plugin 'davidhalter/jedi-vim.git'
Plugin 'racer-rust/vim-racer'
Plugin 'tpope/vim-unimpaired'

" Orgmode {{{3
" and it's dependencies 
Plugin 'vim-scripts/utl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-speeddating'
Plugin 'jceb/vim-orgmode'

" Syntax {{{2
Plugin 'kurayama/systemd-vim-syntax'
Plugin 'hdima/python-syntax' 
Plugin 'tpope/vim-git'
Plugin 'elzr/vim-json' 
Plugin 'scrooloose/syntastic'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'rid9/vim-fstab'
Plugin 'jnwhiteh/vim-golang'
Plugin 'tikhomirov/vim-glsl'
Plugin 'dcbaker/piglit-vim.git'
Plugin 'dcbaker/mako.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'anntzer/vim-cython.git'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-scripts/syntaxudev.vim.git'
Plugin 'dcbaker/vim-arb_assembly.git'
Plugin 'chaimleib/vim-renpy'
Plugin 'isundil/vim-irssi-syntax'
Plugin 'dcbaker/vim-pybugz'
Plugin 'dcbaker/vim-firejail'
Plugin 'PProvost/vim-ps1.git'
Plugin 'digitalrounin/vim-yaml-folds.git'
Plugin 'fatih/vim-go'

" Color Schenes {{{2
Plugin 'nanotech/jellybeans.vim'

" Teardown {{{2
call vundle#end()
filetype plugin indent on

" Settings {{{1
set undofile
set undodir=$XDG_CACHE_HOME/nvim/undo//
set background=dark				" cuz who uses light colored consoles?
set nowrap						" in general we dont want wrap
set nopaste						" dont screw with formatting if not pasting
set number						" very useful
set ruler						" ^this
set autowrite					" autowrite on next, I forget a lot
set autoindent
set expandtab					" expand tabs to spaces
set tabstop=4					" set a resonable tabstop, 8 is not reasonable
set shiftwidth=4				" set a reasonable shiftwidth, 8 is not reasonable
set foldmethod=syntax 			" Syntax folding by default, change it in the ftplugins
set modeline					" this can be a security problem, but its dang useful
set secure                      " disable unsafe commands in project .vimrc
set backup                      " create backups, but put them in a backup folder
set backupdir=$XDG_CACHE_HOME/nvim/backup//
set directory=$XDG_CACHE_HOME/nvim/swap//
set mouse-=a                    " Stop using the dang mouse
" This allows for visual identification of whitespace
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Folding {{{1
let g:sh_fold_enabled=3
let g:vim_markdown_conceal = 0

" Plugin Configuration {{{1

" Airline {{{2
let g:airline_powerline_fonts = 1

" UltriSnips {{{2
let g:UltiSnipsExpandTrigger="<Leader>i"
let g:UltiSnipsListSnippets="<Leader>l"

" Syntastic {{{2
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_loc_list=0
let g:syntastic_aggregate_errors=1

" Editor Config {{{2
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" pymatcher {{{2
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Tagbar {{{2
nmap <f8> :TagbarToggle<CR>

" Mundo {{{2
let g:mundo_prefer_python3 = 1

" Other {{{1
" Use cool colors if it's supported by the terminal
if &term =~ "xterm"
	set t_Co=256 " Konsole workaround
	set t_Sb=[4%dm
	set t_Sf=[3%dm
endif

" Using VIM in tmux can have some unexpected issues.
" This attempts to fix it
if &term == "screen-256color"
	set t_Co=256 " Konsole workarond
	set t_Sb=[4%dm
	set t_Sf=[3%dm
	map <Esc>OH <Home>
	map! <Esc>OH <Home>
	map <Esc>OF <End>
	map! <Esc>OF <End>
endif

colorscheme jellybeans

let g:letlocalleader = '+'

" Change the arrow keys to navigate lines, even if they're wrapped
map <silent> <Up> gk
imap <silent> <Up> <C-o>gk
map <silent> <Down> gj
imap <silent> <Down> <C-o>gj

" vim: foldmethod=marker
