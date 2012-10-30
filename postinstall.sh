#!/bin/bash

ROOT="$PWD"

ln -sf "/usr/lib/go/misc/vim" "$ROOT/.vim/bundle/vim-golang"
ln -sf "../../.vim/gocode/vim" "$ROOT/.vim/bundle/vim-gocode"

ln -sf "../../.vim/vim-pathogen/pathogen.vim" "$ROOT/.vim/autoload/pathogen.vim"


