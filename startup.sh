#!/bin/bash

if [[ $USER -ne 0 ]]
then
    echo "run as root"
    exit 1
fi

echo "Start settings system"

echo "Install softs..."

# Для настройки нужно установить эти пакеты

apt update && \
apt install -y vim git openssh-server zsh cmake libboost-all-dev doxygen \
    chromium-browser cppman zsh screen tmux vlan wireshark && \


# Generate ssh keys
su  -c "ssh-keygen -t rsa -b 4096 -C \"rbbozk@yandex.ru\""  dshvetsov && \
echo "Use this public key into github and bitbucket accout" && \
cat .ssh/id_rsa.pub && \
sleep 2

echo "make zsh dedault"
chsh -s $(which zsh)

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "installing vim plugin manager ... "
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
echo "execute pathogen#infect()" >> ~/.vimrc

echo "installing  NERDTree... "
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree && \
echo "map <C-n> :NERDTreeToggle<CR>" >> ~/.vimrc

echo "installing YouCompleteMe... "
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe && \
cd ~/.vim/bundle/YouCompleteMe && \
git submodule update --init --recursive && \
./install.py --clang-completer

echo "installing cppman into vim"
echo "autocmd FileType cpp set keywordprg=cppman" >> ~/.vimrc
echo "running into screen caching cppman lists"
screen -dmS cppman_caching "y | cppman -c"

echo "installing gruvbox"
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox

echo "set termguicolors" >> ~/.vimrc
echo "let g:gruvbox_italic=1 \" Comment if your terminal is not support italic" >> ~/.vimrc
echo "colorscheme gruvbox" >> ~/.vimrc
echo "set background=dark" >> ~/.vimrc

echo "It is possible setup CMake And YouCompleteMe. See http://bastian.rieck.ru/blog/posts/2015/ycm_cmake/ for more details"

echo "let g:ycm_confirm_extra_conf = 1" >> ~/.vimrc # Year this is not safe

