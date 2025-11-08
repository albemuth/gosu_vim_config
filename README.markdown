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
    ln -s gosu_vim_config/.tmux.conf .tmux.conf
    ln -s gosu_vim_config/.xmodmaprc .xmodmaprc
    ln -s gosu_vim_config/i3 .config/i3
    mkdir ~/vimswp

    cp gosu_vim_config/.exports-sample gosu_vim_config/.exports
    
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    # verify .vimrc vundle path
    vim
    # :BundleInstall
    cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t
    ruby extconf.rb && make
    

## Tmux Configuration

This dotfiles includes a comprehensive tmux configuration designed to mimic GNU Screen behavior while adding tmux's enhanced features.

### Key Features

**Prefix Key**: `C-a` (like GNU Screen, instead of tmux's default `C-b`)

**Window Management**:
- `C-a c` - create new window
- `C-a n` - next window  
- `C-a p` - previous window
- `C-a C-a` - toggle between current and previous window
- `C-a 0-9` - switch to window by number
- `C-a A` - rename current window
- `C-a "` - list all windows (choose window)
- `C-a k` - kill current window

**Pane/Split Management**:
- `C-a S` - split window horizontally (like screen's horizontal split)
- `C-a |` - split window vertically
- `C-a Tab` - switch between panes
- `C-a h/j/k/l` - navigate panes with vi-style keys
- `C-a H/J/K/L` - resize panes
- `C-a Q` - show pane numbers
- `C-a x` - kill current pane

**Session Management**:
- `C-a d` - detach from session
- `tmux attach` - reattach to session

**Copy Mode**:
- `C-a [` - enter copy mode (like screen)
- `C-a ]` - paste buffer
- Vi-style key bindings in copy mode

**Configuration**:
- `C-a r` - reload config file
- `C-a ?` - show all key bindings

### Additional Features Beyond Screen
- Mouse support enabled (click to switch panes/windows)
- Enhanced status bar with session name, user@host, and time
- Activity monitoring
- 256 color support
- Configurable pane borders and colors
- Increased scrollback buffer (10,000 lines)

### Quick Start
1. Start tmux: `tmux`
2. Create new window: `C-a c`
3. Split panes: `C-a S` (horizontal) or `C-a |` (vertical)
4. Navigate: `C-a Tab` or `C-a h/j/k/l`
5. Detach: `C-a d`


