### Get from https://gist.github.com/renshuki/3cf3de6e7f00fa7e744a

## Install Terminator (shell)

```bash
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
```
> Terminator should be setup as default now. Restart your terminal (shortcut: "Ctrl+Alt+T").

## Install ZSH

```bash
sudo apt-get install zsh
```
> Restart your terminal. Choose option 2 for Z Shell configuration.
> Don't forget to migrate your previous configurations (RVM, Rbenv...) from ```.bashrc``` to ```.zshrc```

## Install Oh My ZSH

```bash
cd
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Setup missing fonts (powerline)

### Install powerline font
```bash
cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists
```

### Clean fonts cache
```bash
fc-cache -vf ~/.fonts/
```

### Move config file
```bash
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```

## Configure ZSH

```bash
vim ~/.zshrc
```

### Theme
Change [ZSH_THEME="robbyrussell"] to [ZSH_THEME="agnoster"]
```bash
ZSH_THEME="agnoster"
```

#### Change theme colors to solarize

```dconf``` is required if you don't already have it.
```bash
sudo apt-get install dconf-cli
```

```bash
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh
```
 - I recommend you **option 1** (dark theme) which is just great.
 - Choose **option 1** to download seebi' dircolors-solarized

After installation, open ```.zshrc``` and add the line:

```bash
eval `dircolors ~/.dir_colors/dircolors`
```

To activate dark solarize theme in Terminator just right click on the terminal,
> Preferences>Profiles>Colors>Foreground and Background>Built-in schemes: Solarized dark
> Preferences>Profiles>Colors>Palette>Built-in schemes: Solarized

Restart Terminator and you're done!

### Ruby developer __(optional)__

####  Plugins
If you are Ruby developer you can use these plugins by replacing plugins in ```.zshrc```
```bash
plugins=(git rails rails3 ruby capistrano bundler heroku rake rvm autojump command-not-found python pip github gnu-utils history-substring-search zsh-syntax-highlighting)
```

#### Ruby version prompt
(Add one of the line below into your ```.zshrc``` file)

##### RVM users
```bash
RPROMPT="\$(~/.rvm/bin/rvm-prompt s i v g)%{$fg[yellow]%}[%*]"
```
##### Rbenv users
```bash
RPROMPT='%{$fg[yellow]%}$(rbenv version-name)%{$reset_color%}%'
```

### That's it!
