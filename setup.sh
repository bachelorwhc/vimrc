sudo apt install wmctrl -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/
vim +PluginInstall +qall
sudo apt install libpython2.7-dev cmake
pushd .
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
popd
cp .ycm_extra_conf.py ~/
