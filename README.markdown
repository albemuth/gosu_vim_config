Albemuth's Gosu Vim Config
==========================


Installation:


    export GOSU=~
    cd $GOSU
    git clone git://github.com/albemuth/gosu_vim_config.git
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    ln -s $GOSU/gosu_vim_config/vim .vim
    ln -s $GOSU/gosu_vim_config/vimrc .vimrc
    ln -s $GOSU/gosu_vim_config/.zshrc .zshrc
    ln -s $GOSU/gosu_vim_config/.screenrc .screenrc
    cp $GOSU/gosu_vim_config/.exports-sample $GOSU/gosu_vim_config/.exports
    
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    # verify .vimrc vundle path
    vim
    # :BundleInstall
    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb && make
    


