#!/bin/bash

#
# Setup Link
# 
echo 'Setup Link ----------'
DOT_FILES=( 
  .vimrc 
  .gitconfig .gitignore_global 
)

for file in ${DOT_FILES[@]}
do
  echo "   $file"
  ln -s $HOME/dotfiles/$file $HOME/$file
done
echo '-------------------------'
echo '' 

# 
# NeoBunele
# https://github.com/Shougo/neobundle.vim
# https://github.com/Shougo/neobundle.vim#if-you-want-to-install-manually-or-you-are-using-windows
echo 'Install NeoBundle -------'
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
#cp NeoBundle.lock_changed ~/.vim/bundle/
#cp NeoBundle.lock_changed ~/.vim/bundle/NeoBundle.lock
ln -s $HOME/dotfiles/vim/NeoBundle.lock $HOME/.vim/bundle/NeoBundle.lock
echo '-------------------------'
echo "vim -c ':NeoBundleInstall'"
echo '' 
