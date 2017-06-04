set nocompatible

" Dein Scripts-----------------------------
if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/
endif

" Dein installation------------------------
if !filereadable(expand('~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/README.md'))
  echo "Installing Dein..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/dein.vim ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/
  silent !cd ~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/
  silent !sh ./installer.sh ~/.config/nvim/bundle
  echo "Dein install completed."
endif
" End Dein installation--------------------

call dein#begin('~/.config/nvim/bundle')

" Required for self-management:
call dein#add('~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim')

" Add plugins below
call dein#add('Shougo/deoplete.nvim', {'build': 'vim -s +"call dein#remote_plugins()"'})

" Add plugins above

call dein#end()

if dein#check_install() 
	call dein#update()
endif

filetype plugin indent on
syntax enable

" End Dein Scripts-------------------------

" Add the rest of init.vim below
