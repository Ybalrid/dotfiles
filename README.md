# My current dotfiles

This is for my personal use, but I see no reason why I shouldn't share my Linux config online.

These may be of limited usefulness for you...  :wink:

The basic way to use these would be to pull this folder in your *~home* folder, and symlink the files and folder from this repository to their intended places.

**Obviously** this folder should look pretty empty since every file starting with a dot is hidden on proper operating systems :wink:

Also, this comes without any warranty of any kind, about it's usefullness or the fact that theses files may or may not work on your system

## Software configuration

I'm running the following software. Depending on what you are pulling from this folder, you may need some of these installed

Par of these need to add git submodule you will need to init (like oh-my-zsh's plugins). You may need to bootstrap them by hand (like vundle for nvim, or oh-my-zsh).

 - ArchLinux
 - i3-gaps
 - dex
 - polybar
 - rofi
 - nitrogen
 - nvim
 - Vundle
 - termite
 - compton
 - zsh
 - oh-my-zsh (with a few plugins)
 - tmux
 - fortune-mod
 - cowsay
 - lolcat
 - lsd
 - emacs (spacemacs distro installed in ~/emacs.d/)

The informations below may list additional packages required to get the pointed configuration going on.

The `scripts` folder should be symlinked in `~/scripts`. But it's content ATM is just there to circumvent some kernel/drivers issues between some keyboard keys and the controls of the brightness of my laptop's screen. I plan on adding some other user scripts in there in the future

## Non exhaustive list of the config files here

### tmux

Tmux is a *fantastic* terminal multiplexer that support detaching and attaching sessions.

Because of the crappy AZERTY keyboard I use, I setteled to a less confusing but still finger contorting way of calling the horizontal/vertical splits functions

I use <call key> (should be `ctrl + b`) + `-` for horizontal, and + `|` for vertical.

.tmux.conf will do that, and get rid of the default ugly green bar
.tmux.conf.airline will style tmux according to the (neo)vim plugin "airline"'s theme.

### neovim

I use `nvim` as my main text editor, I use a few plugins, and they are managed via vundle.

All of what you need to know is on the .config/nvim/init.vim folder, you'll need to bootsrap the Vundle plugin manager to make it usable.

### emacs

I'm learning to use emacs with spacemacs. I haven't dug extensively into configuring emacs, and spacemacs is a nice framework to start with as far as I can tell. I'm a vim user, and I cannot live without vim keybindings, but I don't mind having "vim" running inside a more "complete" environement. On Windows I use VsVim inside Visual Studio , on Linux I regularly use FakVim inegrated inside QtCreator for example.

So, I have a .spacemacs with the layers I want and the config I'm running at the root of that directory.

### compton

This is a window compositor, I use it. I have transparent windwos and shadows. I like it, I don't have much to say.

.config/compton.conf


### zsh + oh-my-zsh

I'm putting my .zshrc file, but it uses oh-my-zsh

It's using a bunch of plugins that aren't shipped with oh-my-zsh. They are tracked inside my zsh custom folder via `git submodule`. You need to run  `git submodule init && git submodule update` to get them in `.oh-my-zsh/custom` in this repository

 - zsh-completion
 - zsh-syntax-highlighting
 - history-substring-search

In my usage of this repo, I clone it this repository in `/home/$USER/dotfiles/` so this path is used in zshrc to point to this custom directory

Beware, in the "custom" folder, the aliases may require you to install some other software. e.g. I'm using `lsd` instead of `ls` and `nvim` instead of `vim`

### termite

I used to use termite. My termite config file doesn't do a lot of fancy things. I use a patched powerline/nerdfont font in my terminal, this one is installable as part of a "nerdfont" AUR package on ArchLinux

files are .config/termite/config

*note: My current desktop environement is currently KDE. It's actually easier to manage when debuging fixed-size window applictaions that capture the mouse like video games.*

### i3-gaps

I used i3-gaps as a windowmanager/desktop environment. The config file has AZERTY keybindings, and no i3-bar by itself.

Other notable modifications is that I've shifted the "displacement" from their original JKLM/JKL; config to HJKL for 2 reasons :

 - Same as (neo)vi(m)
 - doesn't move around with most "standard" keyboard layouts

i3 doesn't support XDG autostart, so I'm using `dex` to lanch the .desktop files like dropbox autostart and others.

This is installable via AUR on Arch, and is findable on github.

I'm also using a program called "volumeicon" to have a mixer widget and bindings to controll my sound levels.

This file will launch a launch-script for polybar, and the network manager applet. To have a wallpaper with this, I'm using Nitrogen. `nitrogen --restore` is called by i3 at startup.


### polybar

I'm using a super simple polybar configuration, of one bar on the top with the systra in the middle

.config/polybar/lauch.sh it the launch script called by i3, and the other files are used for configuration

Symbols are handled via a FontAwesome v4 font. on Arch, install from AUR `ttf-font-awesome-4`. This is if ou want to add the music player deamon thing
