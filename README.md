# My current dotfiles

This is for my personnal use, but I see no reason why I shouldn't share my Linux config online.

These may be of limited usefullness for you...  :wink:

The basic way to use these would be to pull this folder in your *~home* folder, and symlink the files and folder from this repository to their intended places.

**Obviously** this folder should look pretty empty since every file starting with a dot is hidden on proper operating systems :wink:

## Software configuration

I'm running the following software. Depending on what you are pulling from this folder, you may need some of these installed

Part of the content of this Git repository will be ommited when tools would pull files by themseves (like Vundle), or added as submodule you will need to init (like oh-my-zsh's plugins). You may need to bootstrap them by hand (like vundle for nvim, or oh-my-zsh).

 - ArchLinux
 - i3
 - polybar
 - dmenu
 - nitrogen
 - nvim
 - Vundle
 - termite
 - compton
 - zsh
 - oh-my-zsh (with a few plugins)
 - tmux

## Unexhaustive list of the config files here

### tmux

Tmux is a *fantastic* terminal multiplexer that support detaching and attaching sessions.

Because of the crappy AZERTY keyboard I use, I setteled to a less confusing but still finger contorting way of calling the horizontal/vertical splits functions

I use <call key> (should be `ctrl + b`) + `-` for horizontal, and + `|` for vertical.

.tmux.conf will do that, and get rid of the default ugly green bar
.tmux.conf.airline will style tmux according to the (neo)vim plugin "airline"'s theme.

### neovim

I use `nvim` as my main text editor, I use a few plugins, and they are managed via vundle.

All of what you need to know is on the .config/nvim/init.vim folder, you'll need to bootsrap the Vundle plugin manager to make it usable.

### compton

This is a window compositor, I use it. I have transparent windwos and shadows. I like it, I don't have much to say.

.config/compton.conf


### zsh + oh-my-zsh

I'm putting my .zshrc file, but it uses oh-my-zsh

It's using a bunch of plugins that aren't shipped with oh-my-zsh, you'll have to git-clone them in your "custom" folder of your oh-my-zsh installation:

 - zsh-completion
 - zsh-syntax-highlighting
 - history-substring-search

The configured theme for oh-my-zsh is agnoster. It looks good with powerline patched font and some colorschemes. I use termite as my termial emulator, and my termit config file has a custom colorscheme pulled from the terminal.sexy website


### termite


My termite config file doesn't a lot of fancy things. I use a patched powerline/nerdfont font in my terminal, this one is installable as part of a "nerdfont" AUR package on ArchLinux

files are .config/termite/config


### i3

I use i3-gaps as a windowmanager/desktop environement. The config file has AZERTY keybindings, and no i3-bar by itself.

Other notable modifications is that I've shifted the "displacement" from their original JKLM/JKL; config to HJKL for 2 reasons :

 - Same as (neo)vi(m)
 - doesn't move around with most "standard" keyboard layouts

i3 doesn't support XDG autostart, so I'm using `dex` to lanch the .desktop files like dropbox autostart and others.

This is installable via AUR on Arch, and is findable on github.

I'm also using a program called "volumeicon" to have a mixer widget and bindings to controll my sound levels.

This file will launch a launchscript for polybar, and the network manager applet. To have a wallpaper with this, I'm using Nitrogen. `nitrogen --restore` is called by i3 at startup.


### polybar

I'm using a super simple polybar configuration, in two bars, one on the bottom and one on the top.

.config/polybar/lauch.sh it the launch script called by i3, and the other files are used for configuration

