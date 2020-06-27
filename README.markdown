Albemuth's Gosu Vim Config
==========================


Installation:


    cd $HOME

    git clone git://github.com/albemuth/gosu_vim_config.git
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    ln -s gosu_vim_config/vim .vim
    ln -s gosu_vim_config/vimrc .vimrc
    ln -s gosu_vim_config/.zshrc .zshrc
    ln -s gosu_vim_config/.screenrc .screenrc
    ln -s gosu_vim_config/.xmodmaprc .xmodmaprc
    ln -s gosu_vim_config/i3 .config/i3

    cp gosu_vim_config/.exports-sample gosu_vim_config/.exports
    
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    # verify .vimrc vundle path
    vim
    # :BundleInstall
    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb && make
    


