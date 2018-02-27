command! PackUpdate packadd minpac | call minpac#init() | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | call minpac#init() | source $MYVIMRC | call minpac#clean()

if !has('nvim')
    packadd nvim-yarp
    packadd vim-hug-neovim-rpc
endif

if !exists('*minpac#init')
  finish
endif

" minpac handles itself.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Autocomplete – base
call minpac#add('Shougo/deoplete.nvim')
" requirements for Vim8
call minpac#add('roxma/nvim-yarp', {'type': 'opt'})
call minpac#add('roxma/vim-hug-neovim-rpc', {'type': 'opt'})

" Autocomplete – Python
call minpac#add('zchee/deoplete-jedi')
call minpac#add('w0rp/ale')

" Autocomplete – C/C++
call minpac#add('zchee/deoplete-clang')

" Snippets + defaults
call minpac#add('Shougo/neosnippet.vim')
call minpac#add('Shougo/neosnippet-snippets')

" Lightline + ale integration
call minpac#add('itchyny/lightline.vim')
call minpac#add('maximbaz/lightline-ale')

" Easy taggling of location+quicklist
call minpac#add('milkypostman/vim-togglelist')

" Autocomplete – github
call minpac#add('SevereOverfl0w/deoplete-github')

" ===== Colorschemes =====
call minpac#add('nanotech/jellybeans.vim')


" ===== Syntax highlighting plugins =====
call minpac#add('tbastos/vim-lua')
call minpac#add('jvirtanen/vim-octave')


" Comment stuff out.
call minpac#add('tpope/vim-commentary')

" Latex live preview + folding
call minpac#add('donRaphaco/neotex')
call minpac#add('matze/vim-tex-fold')


" Sneak – search 2 letters
call minpac#add('justinmk/vim-sneak')

" Align things
call minpac#add('godlygeek/tabular')

" Tagbar
call minpac#add('majutsushi/tagbar')

" Potentially usefull, but unused:

"" Repeat for supported plugins
"call minpac#add('tpope/vim-repeat')


"call minpac#add('easymotion/vim-easymotion')

"call minpac#add('vim-scripts/CSApprox')
"call minpac#add('tomasr/molokai')
"call minpac#add('zeis/vim-kolor')
"call minpac#add('skroll/vim-taghighlight')
"call minpac#add('Valloric/YouCompleteMe')
"call minpac#add('Valloric/ListToggle')
"call minpac#add('SirVer/ultisnips')
"call minpac#add('honza/vim-snippets')
"call minpac#add('taglist.vim')
"call minpac#add('vim-scripts/gnuplot.vim' "gnuplot syntax highlighting)
"call minpac#add('kien/ctrlp.vim')
"call minpac#add('nixon/vim-vmath' "Calculate sum, avg, min, max..)
"call minpac#add('bling/vim-airline')
"call minpac#add('edkolev/promptline.vim' "generate prompt for zsh (bash))
"call minpac#add('gavinbeatty/dragvisuals.vim')
"call minpac#add('octol/vim-cpp-enhanced-highlight')
"call minpac#add('Konfekt/FastFold')
"call minpac#add('jceb/vim-orgmode')

" orgmode suggests/depends on:
"call minpac#add('tpope/vim-speeddating')
"call minpac#add('vim-scripts/utl.vim')
"call minpac#add('taglist.vim')
"call minpac#add('mattn/calendar-vim')
"call minpac#add('bkad/CamelCaseMotion')
"call minpac#add('michaeljsmith/vim-indent-object')
"call minpac#add('vim-scripts/argtextobj.vim')
"call minpac#add('tpope/vim-surround')



"call minpac#add('dahu/vim-asciidoc')

" asciidoc dependencies:
"call minpac#add('dahu/vimple')
"call minpac#add('dahu/Asif')
"call minpac#add('Raimondi/VimRegStyle')
