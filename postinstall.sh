#!/bin/bash

ROOT="$PWD"

function postinstall {
  setup_vim_pathogen
  setup_vim_golang
  setup_vim_gocode
  setup_vim_commandt
}



function setup_vim_pathogen {
  rm "$ROOT/.vim/autoload/pathogen.vim"
  ln -sf "../../.vim/vim-pathogen/autoload/pathogen.vim" "$ROOT/.vim/autoload/pathogen.vim"
}

function setup_vim_golang {
  rm "$ROOT/.vim/bundle/vim-golang"
  ln -sf "/usr/lib/go/misc/vim" "$ROOT/.vim/bundle/vim-golang"
}

function setup_vim_gocode {
  rm "$ROOT/.vim/bundle/vim-gocode"
  ln -sf "../../.vim/gocode/vim" "$ROOT/.vim/bundle/vim-gocode"
}

function setup_vim_commandt {
  cd "$ROOT/.vim/bundle/command-t/ruby/command-t"
  ruby extconf.rb
  make
  cd "$ROOT"
}

postinstall
