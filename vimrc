" be iMproved
set nocompatible

" Vundles requirement
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'antlypls/vim-colors-codeschool'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'easymotion/vim-easymotion'
Plugin 'xuhdev/vim-latex-live-preview' "latex live preview

"Plugin 'vim-scripts/CSApprox'
"Plugin 'tomasr/molokai'
"Plugin 'zeis/vim-kolor'
"Plugin 'skroll/vim-taghighlight'
"Plugin 'godlygeek/tabular'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Valloric/ListToggle'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'taglist.vim'
"Plugin 'vim-scripts/gnuplot.vim' "gnuplot syntax highlighting
"Plugin 'kien/ctrlp.vim'
"Plugin 'nixon/vim-vmath' "Calculate sum, avg, min, max..
"Plugin 'bling/vim-airline'
"Plugin 'edkolev/promptline.vim' "generate prompt for zsh (bash)
"Plugin 'gavinbeatty/dragvisuals.vim'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'nanotech/jellybeans.vim'
""Plugin 'Konfekt/FastFold'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ===========[ color scheme! ]================================================
    
    set background=dark
    colorscheme codeschool
    " relative line numbers
    set relativenumber
    " actual line number for current line
    set number

" ===========[ General Vim behavior ]=========================================

    syntax enable
    " allows hide buffer with unsaved changes without explicit overriding
    set hidden
    " splitting a window will put the new window right of the current one
    set splitright
    " splitting a window will put the new window below the current one
    set splitbelow
    " Tab indentation levels every four columns
    set tabstop=4
    " Indent/outdent by four columns
    set shiftwidth=4
    set softtabstop=4
    " Convert all tabs that are typed into spaces
    set expandtab
    " Always indent/outdent to nearest tabstop
    set shiftround

    set colorcolumn=81
    set virtualedit=block
    "set foldmethod=syntax
    " keep cursor in the middle of the screen
    " set scrolloff=99999
    " Enable file type detection
    filetype plugin indent on

    let mapleader = ","
    " exit insert mode
    inoremap jk <Esc>

" ===========[ Better j, k for long (wrapped) lines ]=========================

    nnoremap j gj
    nnoremap k gk
    nnoremap gj j
    nnoremap gk k

" ===========[ Show trailing whitespaces ]====================================

    set listchars=tab:▸\ ,trail:· ",eol:¬
    set list

" ===========[ Searching ]====================================================

    set hlsearch
    set incsearch
    set ignorecase
    set smartcase
    " <leader>n to hide highlighted search results
    nnoremap <silent> <leader>n :noh<CR>

    nnoremap //   /<C-R>/
    nnoremap ///  /<C-R>/\<BAR>

    " This rewires n and N to do the highlighing...
    "nnoremap <silent> n n:call HLNext(0.4)<cr>
    "nnoremap <silent> N N:call HLNext(0.4)<cr>

    function! HLNext (blinktime)
        set invcursorline
        redraw
        exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
        set invcursorline
        redraw
    endfunction

" ===========[ Makefile special settings ]====================================

    if has("autocmd")
        autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    endif

" ===========[ EasyMotion ]==============================================
    " Disable default mappings
    let g:EasyMotion_do_mapping = 0
    let g:EasyMotion_smartcase = 1

    map <Leader> <Plug>(easymotion-prefix)
    nmap <Leader>s <Plug>(easymotion-s)

    map <Leader>l <Plug>(easymotion-lineforward)
    map <Leader>j <Plug>(easymotion-j)
    map <Leader>k <Plug>(easymotion-k)
    map <Leader>h <Plug>(easymotion-linebackward)

    let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" ===========[ Tabularize maps ]==============================================

"    nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
"    vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
"    nmap <Leader>a, :Tabularize /,\s*\zs/l0l1<CR>
"    vmap <Leader>a, :Tabularize /,\s*\zs/l0l1<CR>
"    nmap <Leader>a< :Tabularize /,/l0c1<CR>
"    vmap <Leader>a< :Tabularize /,/l0c1<CR>
"    nmap <Leader>am :Tabularize /\w\+\zs \ze\s*\w\+/l0<CR>:Tabularize / m_.*/l0<CR>
"    vmap <Leader>am :Tabularize /\w\+\zs \ze\s*\w\+/l0<CR>:Tabularize / m_.*/l0<CR>
"    nmap <Leader>af :Tabularize /^[^(]*\zs\s\+\~\?\S\+\ze\s*(/l0l0<CR>
"    vmap <Leader>af :Tabularize /^[^(]*\zs\s\+\~\?\S\+\ze\s*(/l0l0<CR>


" ===========[ UtilSnips ]====================================================

"    let g:UltiSnipsExpandTrigger="<c-j>"
"    let g:UltiSnipsJumpForwardTrigger="<c-j>"
"    let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"    let g:UltiSnipsListSnippets="<c-e>"
"    let g:UltiSnipsEditSplit="vertical"


" ===========[ YouCompleteMe ]================================================

"    let g:ycm_global_ycm_extra_conf='~/dotfiles/vim/ycm_extra_conf.py'
"    let g:ycm_autoclose_preview_window_after_insertion=1
"    let g:ycm_always_populate_location_list=1
"    let g:ycm_enable_diagnostic_signs=0
"    let g:ycm_confirm_extra_conf=0
"    " YCMs goto definition/declaration
"    nnoremap <c-s-{> :YcmCompleter GoTo<CR>
"    " force recompile
"    nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>


" ===========[ TlistToggle ]==================================================

"    nmap <c-h> :TlistToggle<CR>

" ===========[ Use persistent undo ]==========================================

    if has('persistent_undo')
        " Save all undo files in a single location (less messy, more risky)...
        let myundodir='/tmp/.VIM_UNDO_FILES'
        call system('mkdir -p ' . myundodir)
        let &undodir=myundodir

        " Save a lot of back-history...
        set undolevels=5000

        " Actually switch on persistent undo
        set undofile

    endif

" ===========[ Goto last location in non-empty files ]========================

    autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$")
                       \|  exe "normal! g`\""
                       \|  endif


" ===========[ I'm sick of typing :%s/.../.../g ]=============================

    nmap S :%s//g<LEFT><LEFT>
    vmap S :s//g<LEFT><LEFT>


" ===========[ Switching between buffers/tabs ]===============================

"    nnoremap <Leader>bn :bn<CR>
"    nnoremap <Leader>bp :bp<CR>
"    nnoremap <Leader>tn :tabn<CR>
"    nnoremap <Leader>tp :tabp<CR>

" ===========[ Switching between windows ]====================================

"    nmap <Leader>h <c-w>h
"    nmap <Leader>j <c-w>j
"    nmap <Leader>k <c-w>k
"    nmap <Leader>l <c-w>l

" ===========[ ListToggle ]===================================================

"    let g:lt_location_list_toggle_map = '<leader>o'
"    let g:lt_quickfix_list_toggle_map = '<leader>q'

" ===========[ CtrlP ]========================================================

"    let g:ctrlp_cmd = 'CtrlPMixed'
"    let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(o|so|swp|zip)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }


" ===========[ VMath ]========================================================

"    vmap <expr>  ++  VMATH_YankAndAnalyse()
"    nmap         ++  vip++

" ===========[ Strip trailing whitespaces ]===================================
    fun! StripTrailingWhitespaces()
        let l = line(".")
        let c = col(".")
        %s/\s\+$//e
        call cursor(l, c)
    endfun
    nnoremap <F2> :call StripTrailingWhitespaces()<CR>

" ===========[ Airline ]======================================================

"    let g:airline#extensions#tabline#enabled=1
"    let g:airline_theme='powerlineish'
"    let g:airline_powerline_fonts=1
"
"    set laststatus=2


" ===========[ Promptline ]===================================================
"    " sections (a, b, c, x, y, z, warn) are optional
"    let g:promptline_preset = {
"            \'b' : [ promptline#slices#user() ],
"            \'c' : [ promptline#slices#cwd() ],
"            \'y' : [ promptline#slices#vcs_branch(), '%*' ],
"            \'warn' : [ promptline#slices#last_exit_code() ]}
"
"    " available slices:
"    "
"    " promptline#slices#cwd() - current dir, truncated to 3 dirs. To configure: promptline#slices#cwd({ 'dir_limit': 4 })
"    " promptline#slices#vcs_branch() - branch name only. by default only git branch is enabled. Use promptline#slices#vcs_branch({ 'hg': 1, 'svn': 1}) to enable check for svn and mercurial branches. Note that always checking if inside a branch slows down the prompt
"    " promptline#slices#last_exit_code() - display exit code of last command if not zero
"    " promptline#slices#jobs() - display number of shell jobs if more than zero
"    " promptline#slices#battery() - display battery percentage (on OSX and linux) only if below 10%. Configure the threshold with promptline#slices#battery({ 'threshold': 25 })
"    " promptline#slices#host()
"    " promptline#slices#user()
"    " promptline#slices#python_virtualenv() - display which virtual env is active (empty is none)
"    " promptline#slices#git_status() - count of commits ahead/behind upstream, count of modified/added/unmerged files, symbol for clean branch and symbol for existing untraced files
"    "
"    " any command can be used in a slice, for example to print the output of whoami in section 'b':
"    "       \'b' : [ '$(whoami)'],
"    "
"    " more than one slice can be placed in a section, e.g. print both host and user in section 'a':
"    "       \'a': [ promptline#slices#host(), promptline#slices#user() ],
"    "
"    " to disable powerline symbols
"    " `let g:promptline_powerline_symbols = 0`

"============[ Make arrow keys move visual blocks around ]====================

"    vmap  <expr>  <LEFT>   DVB_Drag('left')
"    vmap  <expr>  <RIGHT>  DVB_Drag('right')
"    vmap  <expr>  <DOWN>   DVB_Drag('down')
"    vmap  <expr>  <UP>     DVB_Drag('up')
"    vmap  <expr>  D        DVB_Duplicate()
"    vmap  <expr>  <C-D>    DVB_Duplicate()
"
"    " Remove any introduced trailing whitespace after moving...
"    let g:DVB_TrimWS = 1
"
