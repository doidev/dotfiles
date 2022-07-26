" in terminal type `nvim` to execute and run nvim then type `:echo
" stdpath('config')` to see the location of config file of nvim. This is very
" important file to run config, themes, plugin, key bindings of nvim.
" config file init.vim in ~/.config/nvim/init.vim
" *****************************************************************************
"" Vim-Plug core to manage all plugins link ref https://github.com/junegunn/vim-plug
"*****************************************************************************
" Double quote beginning mean this is commented
" for ubuntu the folder to store all plugins is '~/.config/nvim/plugged'
call plug#begin('~/.config/nvim/plugged') 
" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" Make your Vim/Neovim as smart as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" expanding abbreviations similar to https://emmet.io/
Plug 'mattn/emmet-vim'
" search files in source code
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" explore sidebar to see folder & files in project
Plug 'scrooloose/nerdtree'
" show info at statusline 
Plug 'vim-airline/vim-airline'
" auto close tag, type `<table` then `>>` will be 
" <table>
"   `| cursor will be move to | position`
" </table>
Plug 'alvan/vim-closetag'
" comment same with vscode gcl, gcc, gcl
Plug 'tpope/vim-commentary'
" show information of git on statusline and can do git in nvim with G: 
Plug 'tpope/vim-fugitive'
" add blockquotes, tags... surround a selected area
Plug 'tpope/vim-surround'
" onedarkthem less contract
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim',
" highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'
" easy move with jump. Consider NOT use this 
" Plug 'easymotion/vim-easymotion'
" view mark file add +, change ~, delete ~ and deal with that stage or undo
Plug 'airblade/vim-gitgutter'
" Plug 'lilydjwg/colorizer' " Do NOT use this one led to delay when switching between screen 
" show the color of hex, rgb code as background of that color in all files (js, html, css...) test color #f80 #3ff
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" terminal while using nvim to check git, consider not use this. it lag. use
" `ctrl + z` to temporary exit vim buffer to open terminal to do what ever you
" want then `fg` enter to return back to vim buffer
" Plug 'voldikss/vim-floaterm'
" use s or S then {char}{char} to search below (s) or above (S) {char}{char} 
Plug 'justinmk/vim-sneak'
" Markdown preview file. Once open markdown file in nvim then type
" :MarkdownPreview then browser automatically open it and
" :MarkdownPreviewStop to stop. This combine with joplin terminal note
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" snippets https://www.chrisatmachine.com/Neovim/17-snippets/
Plug 'honza/vim-snippets'
" a simple, unified, single tabpage interface that lets you easily review all changed files for any git rev.
Plug 'sindrets/diffview.nvim'
Plug 'nvim-lua/plenary.nvim'
" https://github.com/lukas-reineke/indent-blankline.nvim
" Plug 'lukas-reineke/indent-blankline.nvim'
" https://vimawesome.com/plugin/vim-quickrun
" Plug 'thinca/vim-quickrun'

" https://vimawesome.com/plugin/obsession-vim  
" https://tmuxcheatsheet.com/tmux-plugins-tools/?full_name=tmux-plugins%2Ftmux-resurrect
" Plug 'tpope/vim-obsession'
" scrollbar for vim 
" Plug 'Xuyuanp/scrollbar.nvim'
" https://github.com/ryenguyen7411/any-jump.vim
Plug 'pechorin/any-jump.vim'
" https://github.com/tveskag/nvim-blame-line
Plug 'tveskag/nvim-blame-line'
call plug#end()


"*****************************************************************************
"" Basic Setup " https://neovim.io/doc/user/vim_diff.html
"*****************************************************************************"
"set up for plugin hexokinase to show color background of color code in js,
"html, css file. Then we know how does it look like of the color
set termguicolors
let g:Hexokinase_highlighters = ['backgroundfull']
set number relativenumber
set number
set backspace=2                         " Backspace deletes like most programs in insert mode
set tabstop=2
set shiftwidth=2
set hidden
set pumheight=10                        " Makes popup menu smaller
" set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages can be 2
" set wrap                                " Display long lines as just one
" set textwidth=80
set linebreak                            " wrap long lines at a character in 'breakat' rather
" set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion default 500ms
set timeoutlen=30000                      " By default timeoutlen is 1000 ms, popup poppup
" set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set lazyredraw				                  " Avoids updating the screen before commands are completed
" set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
" set backspace=indent,eol,start          " Fix backspace indent
set mouse=a  				                    " Enable your mouse
set mousemodel=popup_setpos
" Use modeline overrides
" set modeline
" set modelines=10

" set notitle
set noerrorbells
set noswapfile
set colorcolumn=120 
hi ColorColumn ctermbg=0 guibg=black

" highlight clear SignColumn
" hi Pmenu guibg=#3d3d3d gui=NONE
" hi PmenuSel guibg=#232323 gui=NONE
" hi PmenuSbar guibg=#bcbcbc
" hi PmenuThumb guibg=#585858

" Encoding
set encoding=utf-8
set fileencoding=utf-8                  " The encoding written to file
set fileencodings=utf-8
set fileformats=unix

" Searching
set ignorecase                            " ignore Upper or Lowercase
set smartcase                             " depend of pattern lower or Upper
" set hlsearch                              " hightlight search \
" set incsearch                             " set increment next search result
" https://vimhelp.org/options.txt.html#%27statusline%27
set tabline=%f\ \|\ %L
set undofile      " Maintain undo history between sessions
set undodir=~/.config/nvim/undodir
" set mouse cursor block when insert mode"
" set guicursor=i:block  
"
"*****************************************************************************
"" Visual, Theme Settings
"*****************************************************************************
" syntax on
colorscheme dracula
" colorscheme onedark

" turn on airline powerline symbol by downloand install fonts https://github.com/powerline/fonts via ./install.sh in folder fonts-master https://www.youtube.com/watch?v=-r6Sj70Ziws&ab_channel=TheFrugalComputerGuy
let g:airline_powerline_fonts = 1
" https://jdhao.github.io/2018/09/29/Switching_buffers_quickly_Neovim/
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 0 "1 to show buffer no.

" hightlight comment in italic 
" hi Comment cterm=italic

" hightlight background transparent background for nvim
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Customize cursor line
"" Enable CursorLine
set cursorline
highlight CursorLine gui=underline 
:autocmd InsertEnter * highlight CursorLine gui=NONE 
:autocmd InsertLeave * highlight CursorLine gui=underline 

" gui=underline guifg=NONE guibg=NONE
" highlight CursorLine gui=underline guifg=NONE guibg=NONE
" highlight CursorLineNr guifg=lightblue 

"let g:onedark_hide_endofbuffer=1
"let g:onedark_terminal_italics=1
"let g:onedark_termcolors=256

"Floaterm is the termimal popup while using vim, we can use to check git... config
" let g:floaterm_keymap_toggle = '<leader>t'
"let g:floaterm_keymap_toggle = '<F1>'
"let g:floaterm_keymap_next   = '<F2>'
"let g:floaterm_keymap_prev   = '<F3>'
"let g:floaterm_keymap_new    = '<F4>'
" let g:floaterm_gitcommit='floaterm'
" let g:floaterm_autoinsert=1
" let g:floaterm_width=0.95
" let g:floaterm_height=0.95
" let g:floaterm_wintitle=0
" let g:floaterm_autoclose=1
" /Floaterm

" vim-sneak use to move quick to any word within the screen from current
" cursor position with pattern `s{character}{character}` example: stv, sau...
let g:sneak#label = 1
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1
" remap so I can use , and ; with f and t
" map gS <Plug>Sneak_,
" map gs <Plug>Sneak_;
"/vim-neak
 
" Autoclose Tags
let g:closetag_filenames = '*.html,*.xhtml,*.js,*.jsx,*.hbs'
" <Link></Link>  & <link></link> interger 0 | 1
let g:closetag_emptyTags_caseSensitive = 1
" /Autoclose Tags

" gitgutter
let g:gitgutter_preview_win_floating = 1
" un map all keys bindings of gitgutter then will map it again
let g:gitgutter_map_keys = 0
" nmap ght <Plug>(GitGutterToggle) 
nmap ghp <Plug>(GitGutterPreviewHunk) 
nmap ghu <Plug>(GitGutterUndoHunk)   
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" nmap ghs <Plug>(GitGutterStageHunk) 
" xmap ghS <Plug>(GitGutterStageHunk)
" xmap nc <Plug>(GitGutterTextObjectOuterVisual)
" omap nc <Plug>(GitGutterTextObjectOuterPending)
" xmap n% <Plug>(MatchitVisualTextObject)

" /gitgutter

"vim-fugitive'
"deal with git stage, unstage, commit, push, solve git conflict
"- to see status of git then use below comment
nmap gs :G<CR>
" move cursor to the file then press `u` for unstage, `s` for stage each file
" or all files
" use G:commit to commit change and G:push to push commit to remote
" Deal with merger conflict press `dd` to go to buffer to solve conflict
" link http://vimcasts.org/episodes/fugitive-vim-resolving-merge-conflicts-with-vimdiff/
" :diffget //2 - fetches the hunk from the target parent (on the left)
" :diffget //3 - fetches the hunk from the merge parent (on the right)
nmap gf :diffget //2<CR> 
nmap gj :diffget //3<CR>
" set :Gdiffsplit to 3 columns vertical
set diffopt+=vertical

"/vim-fugitive'

" Preview markdown file 
nmap <C-m> <Plug>MarkdownPreview

" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
" scrollbar.nvim'
" augroup ScrollbarInit
"   autocmd!
"   autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"   autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
" augroup end

"*****************************************************************************
"" Abbreviations
"*****************************************************************************

" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

"*****************************************************************************
"" Commands
"*****************************************************************************

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************

" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
autocmd!
autocmd BufEnter * :syntax sync maxlines=200
augroup END

" Remember cursor position
augroup vimrc-remember-cursor-position
autocmd!
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

autocmd FileType scss setl iskeyword+=@-@

autocmd BufEnter :e ++ff=dos<CR>

"*****************************************************************************
"" Mappings, nnore = nonrecursive (De quy) mean call function inside function
" create loop and can be infinited loop
" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode
"*****************************************************************************

" Map <leader> to <space>
let mapleader=' '   
" map redo ctrl + r 
nnoremap U <C-R>

" Basic mappings
" inoremap jj <ESC>
" inoremap jk <ESC>
" xnoremap jj <ESC>
" xnoremap jk <ESC>
" xnoremap jk <Esc>
" xnoremap kj <Esc>
" nnoremap j jzz
" nnoremap k kzz
" nnoremap # #zz
" nnoremap * *zz
" nnoremap n nzz
" nnoremap N Nzz
" nnoremap G Gzz

" Better nav for omnicomplete when go up and down in menu popup
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" Better window navigation ctrl+h,j,k,l instead of ctrl+w+h,j,k,l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nnoremap <Leader>o o<Esc>^Da
" nnoremap <Leader>O O<Esc>^Da

" terminal in vim, stop
" nmap <silent><leader>z <C-z> 

" Yank to Vim + OS clipboard by installing xclip https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/xclip_0.13-1_amd64.deb.html
" Copy in Visual mode
vmap <leader>c :!xclip -f -sel clip<CR>
" Paste in normal mode
map <leader>v mz:-1r !xclip -o -sel clip<CR>`z

"clone paragraph inside a block `}` and aste it right under empty row
nnoremap cp yap}p

" format code inside a block
noremap <silent><leader>a =ip

" Jump to something
" search and highlight 
nnoremap <silent><leader>f /
" clear highlight from search by /
nnoremap <silent><leader><cr> :noh<cr>
" Open files in git repo 
nnoremap <silent><leader>p :GFiles --cached --others --exclude-standard<CR>
" Open files in current folder
nnoremap <silent><leader>o :Files<CR>
" Open list of buffers (window open)
nnoremap <silent><leader>b :Buffers<CR>

" Create NEW buffer
" nnoremap <silent><leader>n :e! ~/buff<CR>
" close buffer. Consider to active this due to it will close buffer 
nnoremap <silent><leader>q :bd<cr>
" close window when split window
" nnoremap <silent><leader>q :close<cr>
" EXIT vim
nnoremap <silent><leader>e :q!<cr>
" Open list of Files History
nnoremap <silent><leader>i :History<CR>
" Open list of Commands History
nnoremap <silent><leader>y :History:<CR>
" Open search by 'key word etc: class name, #id, function name...' entire current folder
nnoremap <silent><leader>g :Rg<CR>
" nnoremap <silent><leader>a 1Ag<CR>
" nnoremap <silent>ng :Ag<CR>
" map % to jum faster better open and close of {, [, (
nnoremap <silent><leader>j %
vnoremap <silent><leader>j %

" Fast save
nnoremap <silent><leader>s :wa!<cr>
" inoremap <silent><leader>s <ESC>:w!<cr>
" split current window vertical on the right 'set splitright'  
nnoremap <silent><Leader>w :vsplit<CR>
" split current window horizontal on bottom 'set splitbelow'
nnoremap <silent><Leader>W :split<CR>

" quick jump to first non-blank of row
nnoremap <silent><leader>h ^

" quick jump to last non-blank of row
nnoremap <silent><leader>l $

" Insert new line below the current line in normal mode
nnoremap O o<Esc>k

" In Visual Mode Indent shifting > and <
vnoremap < <gv
vnoremap > >gv

  "In Visual Mode move line up, down when in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" In normal mode map to go faster up, down
nnoremap J 10j
nnoremap K 10k

" Working with NERDTree
" press `m` to call menu @ cursor position to (add,delete file)
nnoremap <silent><F2> :NERDTreeFind<CR>
nnoremap <silent><F3> :NERDTreeToggle<CR>

" remap j and k to move down each line of wrapping section (code,text)  
nnoremap j gj
nnoremap k gk

" Do emmet for Pug emmet for example type div then pressj<Tab> then become <div></div>
imap j<Tab> <C-Y>,

" GoTo code navigation, super cool to work with source code 
" go to definition for example go to the function where it is exported to use
nmap <silent>gd <Plug>(coc-definition)
" back to previous location. Very useful when using gd then <C-o> to go back 
nmap <silent>gb <C-o>
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
" Go to references where that function being used in the source code
nmap <silent>gr <Plug>(coc-references)
nmap <silent><F12> <Plug>(coc-definition)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent>[g <Plug>(coc-diagnostic-prev)
nmap <silent>]g <Plug>(coc-diagnostic-next)

nmap đ dd
inoremap {thí} thiss
inoremap jj <ESC>
inoremap jk <ESC>


" Use H to show documentation in preview window when hover.
nnoremap <silent> H :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"*****************************************************************************
"" Custom configs
"*****************************************************************************

"fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"


" Instal fzf with preview hightlight color install bat as link color preview
" https://github.com/junegunn/fzf.vim#dependencies    
" https://awesomeopensource.com/project/yuki-yano/fzf-preview.vim
" For syntax-highlighted preview, install bat https://awesomeopensource.com/project/sharkdp/bat
" Ag requires The Silver Searcher (ag)
" Rg requires ripgrep (rg)

" Default fzf layout https://github.com/junegunn/fzf/blob/master/README-VIM.md
" - Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
" let g:fzf_layout = { 'down':  '40%'}

" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
" let g:fzf_preview_window = ['right:50%']

" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
let g:fzf_preview_window = ['down:50%']

" Empty value to disable preview window altogether
" let g:fzf_preview_window = []



" Open files in splits
" Consider using CTRL-X/V/T key bindings of the default :FZF command instead.
" Reverse the layout to make the FZF list top-down
" let $FZF_DEFAULT_OPTS='--layout=reverse'




"The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!node_modules/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" NERDTree configuration
" let g:NERDTreeChDirMode=2
" let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
" let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
" let g:NERDTreeShowBookmarks=1
" let g:nerdtree_tabs_focus_on_files=1
" let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
" let g:NERDTreeWinSize = 50
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" Command :CocConfig to open coc-settings.json file
" COC. Please remember run command $:CocInstall <extensions> to install
" extensions. Examples: CocInstall coc-eslint
" let g:coc_global_extensions = ['coc-css','coc-eslint8', 'coc-html' ,'coc-eslint', 'coc-json', 'coc-tsserver','coc-stylelintplus','coc-snippets', 'coc-pairs']
let g:coc_global_extensions = ['coc-css','coc-eslint8', 'coc-html' , 'coc-json', 'coc-tsserver','coc-stylelintplus','coc-snippets', 'coc-pairs']

" bind `tab` for autocompletion https://stackoverflow.com/questions/67370086/how-to-remap-coc-nvim-autocomplete-key
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
" coc-spippets how to use? 1. type command `:CocCommand snippets.editSnippets`
" to open the list of snippets
" fix this error https://github.com/neovim/neovim/issues/12234 . python3
" --version. Then install python3 as link https://phoenixnap.com/kb/how-to-install-python-3-ubuntu . Then in nvim run `:checkhealth provider` then install pip
" sudo apt-get install python3-pip     then install below
"python3 -m pip install --user --upgrade pynvim
" format scss
" autocmd FileType scss setl iskeyword+=@-@
" Run the command to approve eslint :CocCommand eslint.showOutputChannel -->
" select 1 to allow anywhere

" fold nvim
" select range by `v` then to fold type zf and unfold is stand at fold area
" then type zo 
set foldmethod=marker
" diffview.nvim'
nmap gv :DiffviewClose<CR>
nmap go :DiffviewOpen<CR>
nmap gp :DiffviewFileHistory<CR>
" /diffview.nvim'
"
"
" https://mahmoudashraf.dev/blog/no-more-postman-just-curl-and-vim/
" command Exec set splitright | vnew | set filetype=sh | read !sh #
" Vim abbreviations https://jovica.org/posts/vim_abbreviations/
iabbrev thí this
iabbrev ré res
iabbrev uéc usec
iabbrev í is
iabbrev @ @apply
" iabbrev clg console.log()<Left>
" iabbrev cc /*<CR><CR>/<Up> 
" any-jump https://github.com/ryenguyen7411/any-jump.vim
let g:any_jump_disable_default_keybindings = 1

" Normal mode: Jump to definition under cursor
nnoremap <silent><leader>d :AnyJump<CR>
" Normal mode: open last closed search window again
nnoremap <silent><leader>r :AnyJumpLastResults<CR>
" transparent popup preview any jumps
" au VimEnter * highlight NormalFloat ctermbg=NONE guibg=NONE
"
"
" remove ^M removed with command :e ++ff=dos 
nnoremap <silent><leader>t :e ++ff=dos<CR>
"
"nvim-blame-line https://github.com/tveskag/nvim-blame-line
nnoremap <silent><leader>z :ToggleBlameLine<CR>
" https://github.com/neoclide/coc.nvim/issues/856
let g:coc_node_path = '/home/sen/.nvm/versions/node/v14.17.6/bin/node'

"https://github.com/airblade/vim-gitgutter/issues/516
" untested but you get the idea
let g:gitgutter_diff_base = 'master'
:command Gm let g:gitgutter_diff_base = 'master' | GitGutter
:command Gb let g:gitgutter_diff_base = 'HEAD~0' | GitGutter
