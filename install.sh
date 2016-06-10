#! /bin/sh
echo "backup old vim files to .vim.bkp_<DATE>"
if [ -e ~/.vim ] ; then
    mv ~/.vim ~/.vim.bkp_$(date +%Y%m%d%H%M%S)
fi
if [ -e ~/.vimrc ] ; then
    mv ~/.vimrc ~/.vimrc.bkp_$(date +%Y%m%d%H%M%S)
fi

echo "creating new pathogen structure in .vim"
mkdir -p ~/.vim/autoload && \
ln -s $(pwd)/manager/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim && \
ln -s $(pwd)/bundle ~/.vim/bundle && \
ln -s $(pwd)/files/.vimrc ~/.vimrc

echo "done..."
echo "...add new plugins to vim_setup/bundle as submodules"
