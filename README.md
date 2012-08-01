dotfiles
by craig little

###### installation
    cd ~ && mkdir etc
    git clone git@github.com:craiglittle/dotfiles.git etc
    ln -s etc/dotfiles/.[!.]* .
    ./etc/dotfiles/.vim/update_bundles
