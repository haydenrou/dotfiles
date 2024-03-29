#!/bin/bash

echo "This script is not updated and doesn't work correctly, just use it as a guide"
exit 0

cd ~ && sudo apt-get update -y && sudo apt-get upgrade -y;

echo "Installing the basics: git, vim, tmux, wget, ruby, rubygems, vim-nox, fzf, ripgrep"
sudo apt-get install -y \
  git \
  vim \
  neovim \
  tmux \
  wget \
  gpg \
  dirmngr \
  nnn \
  xsel \
  curl \
  ruby \
  rubygems \
  vim-nox \
  neofetch \
  ripgrep \
  powerline \
  libc6 \
  fzf \
  zoxide \
  libmysqlclient-dev \
  libssl-dev \
  libreadline-dev \
  libsqlite3-dev \
  libreadline-dev \
  mysql-server \
  mysql-client \
  tldr \
  tmate

# bat installation isn't through apt yet
curl -fLo bat.deb https://github.com/sharkdp/bat/releases/download/v0.15.4/bat-musl_0.15.4_amd64.deb
sudo dpkg -i ./bat.deb
rm ./bat.deb

echo "As per https://github.com/junegunn/fzf/issues/1589 we'll have to install fzf manually on Ubuntu 18.04 at the moment";
wget http://mirrors.kernel.org/ubuntu/pool/universe/f/fzf/fzf_0.18.0-2_amd64.deb | sudo dpkg -i;

mkdir -p ~/.config/nvim/lua

ls -a ~ | grep fzf_ | xargs rm

read -p "Would you like to run i3 [Y/n]? " ithree
case $ithree in
  [Yy]* ) sudo apt-get install -y \
    i3 \
    i3status \
    dmenu \
    i3lock \
    xbacklight \
    feh \
    conky \
    lxappearance \
    xcompmgr \
    && touch ~/.config/brightness \
    && mkdir ~/.config/i3 && ln -s ~/projects/dotfiles/i3config.symlink ~/.config/i3/config \
    && mkdir ~/.config/i3status && ln -s ~/projects/dotfiles/i3status.config.symlink ~/.config/i3status/config;;
  [Nn]* ) ;;
  * )
esac

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

read -p "What email do you want associated with your git config? " gitemail
git config --global user.email "$gitemail"
read -p "And the name? " gitname
git config --global user.name "$gitname"

mkdir ~/projects
mkdir -p ~/.local/share/nvim/undo

mkdir ~/.fonts
wget https://github.com/abertsch/Menlo-for-Powerline/raw/master/Menlo%20for%20Powerline.ttf -P ~/.fonts/

echo "Making an SSH Key";
ssh-keygen -t rsa
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

echo $(cat ~/.ssh/id_rsa.pub)

read -p "Press <Enter> once you have added the SSH key above to github." irrelevant

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8

git clone git@github.com:haydenrou/dotfiles.git ~/projects/dotfiles

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config/alacritty
mkdir ~/.config/nvim
mkdir -p ~/.config/solargraph
rm ~/.bashrc ~/.bash_profile ~/.tmux.conf ~/.vimrc ~/.profile > /dev/null 2>&1
ln -s ~/projects/dotfiles/ignore.symlink ~/.ignore
ln -s ~/projects/dotfiles/gh-cli.config.yml ~/.config/gh/config.yml
ln -s ~/projects/dotfiles/alacritty.symlink.yml ~/.config/alacritty/alacritty.yml
ln -s ~/projects/dotfiles/profile.symlink ~/.profile
ln -s ~/projects/dotfiles/bash_profile.symlink ~/.bash_profile
ln -s ~/projects/dotfiles/bashrc.symlink ~/.bashrc
ln -s ~/projects/dotfiles/tmux.conf.symlink ~/.tmux.conf
ln -s ~/projects/dotfiles/vimrc.symlink ~/.config/nvim/init.vim
ln -s ~/projects/dotfiles/coc-settings.symlink.json ~/.config/nvim/coc-settings.json
ln -s ~/projects/dotfiles/solargraph.config.yml ~/.config/solargraph/config.yml
ln -s ~/projects/dotfiles/coc-settings.symlink.json ~/.config/nvim/coc-settings.json

# NOTE: This is for MacOS
mkdir ~/.config/yabai
ln -s ~/projects/dotfiles/yabairc.symlink ~/.config/yabai/yabairc
mkdir ~/.config/skhd
ln -s ~/projects/dotfiles/skhd.symlink ~/.config/skhd/skhdrc

source ~/.bash_profile
source ~/.bashrc

echo "and install your tmux plugins :)";
~/.tmux/plugins/tpm/bin/install_plugins

read -p "Would you like to install GOLANG? [Y/n]" golang
case $golang in
  [Yy]* )
    asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
    read -p "Enter a specific version (the LTS at time of writing is 1.14) " golang_version
    asdf install golang $golang_version
    asdf global golang $golang_version
    vim -c "TSInstall go|echo 'you have installed go for treesitter, and can exit now'"
    ;;
  [Nn]* ) ;;
  * )
esac

read -p "Would you like to install NodeJS? [Y/n]" nodejs
case $nodejs in
  [Yy]* )
    asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
    read -p "Enter a specific version (the LTS at time of writing is 12.16.3) " nodejs_version
    asdf install nodejs $nodejs_version
    asdf global nodejs $nodejs_version
    ;;
  [Nn]* );;
  * )
esac

sudo apt-get install -y
  nodejs \
  gcc \
  g++ \
  make

vim -c "packadd nvim-treesitter|echo 'you have added the treesitter package, you can exit now'"
vim +Plug Install +qall # you may need to redo TSInstall
vim -c "TSInstall ruby|echo 'you have installed Ruby for treesitter, and can exit now'"
vim -c "TSInstall typescript|echo 'you have installed typescript for treesitter, and can exit now'"

vim -c "call coc#util#install()|echo 'Quit vim using :qa when completed'"

vim -c "CocInstall coc-sh coc-html coc-eslint coc-css coc-tsserver coc-json coc-tailwindcss coc-prettier coc-elixir coc-erlang_ls coc-go coc-docker coc-solargraph|echo 'When the plugin is installed it will let you know, and you can exit with :qa'"

vim -c "CocCommand eslint.showOutputChannel"

read -p "Would you like to install Yarn? [Y/n]" yarn
case $yarn in
  [Yy]* )
    asdf plugin-add yarn
    read -p "Enter a specific version (the LTS at time of writing is 1.17.3) " yarn_version
    asdf install yarn $yarn_version
    asdf global yarn $yarn_version
    ;;
  [Nn]* );;
  * )
esac

read -p "Do you want to install Elixir? [Y/n] " elixir
case $elixir in
  [Yy]* )
    asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
    asdf install erlang 23.0
    asdf global erlang 23.0
    asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
    asdf install elixir 1.10.13
    asdf global elixir 1.10.13
    mix local.hex
      read -p "And do you want to install Phoenix? [Y/n] " phoenix
      case $phoenix in
        [Yy]* ) mix archive.install hex phx_new 1.5.1;;
        [Nn]* );;
        * )
      esac
    ;;
  [Nn]* );;
  * )
esac

read -p "Do you want to install Ruby? [Y/n] " ruby
case $ruby in
  [Yy]* )
    asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
    read -p "Enter a specific version  " ruby_version
    asdf install ruby $ruby_version
    asdf global ruby $ruby_version
    gem install solargraph
    gem install mailcatcher
    gem install rubocop
    ;;
  [Nn]* );;
  * )
esac

read -p "Do you want the mysql2 gem at version 0.5.2? [Y/n] " versioned_mysql
case $versioned_mysql in
  [Yy]* )
    gem install mysql2 -v "0.5.2"
    ;;
  [Nn]* );;
  * )
esac

echo "Moving onto database setup:"
read -p "What password do you want _root_ to be set as for mysql? " password

PASSWORD_SCRIPT="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY \"${password}\"; FLUSH PRIVILEGES; exit;"

sudo mysql < PASSWORD_SCRIPT

vim -c "smile"

echo '==========================================================================='
echo "Done! You can now `rm ~/setup.sh`, and there is a copy in `~/projects/dotfiles` for reference if you're interested. Please read the README to see further details. Enjoy..."
echo '==========================================================================='

