Albemuth's Gosu Vim Config
==========================


Installation:


    cd $HOME

    git config --global url.https://github.com/.insteadOf git://github.com/

    git clone git://github.com/albemuth/gosu_vim_config.git
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    ln -s gosu_vim_config/vim .vim
    ln -s gosu_vim_config/vimrc .vimrc
    ln -s gosu_vim_config/.zshrc .zshrc
    ln -s gosu_vim_config/.screenrc .screenrc
    ln -s gosu_vim_config/.xmodmaprc .xmodmaprc
    ln -s gosu_vim_config/i3 .config/i3
    mkdir ~/vimswp

    cp gosu_vim_config/.exports-sample gosu_vim_config/.exports
    
    sudo apt install fzf
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
