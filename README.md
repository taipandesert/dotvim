Using git-submodules to version-control Vim plugins
====================================================

cd ~/.vim
cp ~/.vimrc vimrc
git init
git add *
git commit -m "Initial commit."
git remote add origin https://github.com/username/reponame.git
git push -u origin master

To enable git submodules

cd ~/.vim
git submodule init


TODO
=======
Make a backup of .vimrc => vimrc.bak

Syntastic plugin => is it necessary?
NerdTree => how to sync configuration?


The following instructions assume that your home directory contains a .vimrc file, a .vim directory and a .gvimrc file (optional).

Move the .vimrc and .gvimrc files into the .vim directory:

mv .vimrc ~/.vim/vimrc
mv .gvimrc ~/.vim/gvimrc

Create symbolic links so that ~/.vimrc points to the ~/.vim/vimrc file:

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

Change to the .vim directory, and initialize it as a git repository:

cd ~/.vim
git init



Installing your Vim environment on another machine
==================================================

cd ~
git clone http://github.com/username/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update


Upgrading a plugin bundle

cd ~/.vim/bundle/fugitive
git pull origin master

Upgrading all bundled plugins

git submodule foreach git pull origin master

Current Plugins
==================================================
https://github.com/wlangstroth/vim-racket.git
https://github.com/powerline/powerline
https://github.com/tpope/vim-fugitive
https://github.com/scrooloose/nerdcommenter
https://github.com/altercation/vim-colors-solarized
https://github.com/scrooloose/nerdtree
https://github.com/scrooloose/syntastic
https://github.com/klen/python-mode
https://github.com/honza/vim-snippets
https://github.com/flazz/vim-colorschemes
