#!/bin/bash

cd ~ && sudo apt-get update -y && sudo apt-get upgrade -y;

echo "Installing the basics: git, vim, tmux, wget, ruby, rubygems, vim-nox, fzf, ripgrep"
sudo apt-get install -y \
  git \
  vim \
  tmux \
  wget \
  gpg \
  dirmngr
  nnn \
  xsel \
  curl \
  ruby \
  rubygems \
  vim-nox \
  neofetch \
  silversearcher-ag \
  ripgrep \
  powerline \
  libc6 \
  fzf \
  libmysqlclient-dev \
  mysql-server \
  mysql-client

echo "As per https://github.com/junegunn/fzf/issues/1589 we'll have to install fzf manually on Ubuntu 18.04 at the moment";
read -p "Are you running Ubuntu? [Y/n]? " ubuntu
case $ubuntu in
  [Yy]* ) wget http://mirrors.kernel.org/ubuntu/pool/universe/f/fzf/fzf_0.18.0-2_amd64.deb | sudo dkpg -i;;
  [Nn]* ) exit;;
  * ) exit;;
esac
ls -a ~ | grep fzf_ | xargs rm

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

read -p "What email do you want associated with your git config? " gitemail
git config --global user.email "$gitemail"
read -p "And the name? " gitname
git config --global user.name "$gitname"

mkdir ~/projects
mkdir ~/.vim/undodir -p

mkdir ~/.fonts
wget https://github.com/abertsch/Menlo-for-Powerline/raw/master/Menlo%20for%20Powerline.ttf -P ~/.fonts/

echo "Making an SSH Key";
ssh-keygen -t rsa
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

echo $(cat ~/.ssh/id_rsa.pub)
read -p "Press <Enter> once you have added the SSH key above to github.";

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8

git clone git@github.com:haydenrou/dotfiles.git ~/projects/dotfiles

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config/solargraph -p
rm ~/.bashrc ~/.bash_profile ~/.tmux.conf ~/.vimrc > /dev/null 2>&1
ln -s ~/projects/dotfiles/aginore.symlink ~/.agignore
ln -s ~/projects/dotfiles/alacritty.symlink.yml ~/.alacritty.yml
ln -s ~/projects/dotfiles/profile.symlink ~/.profile
ln -s ~/projects/dotfiles/bash_profile.symlink ~/.bash_profile
ln -s ~/projects/dotfiles/bashrc.symlink ~/.bashrc
ln -s ~/projects/dotfiles/tmux.conf.symlink ~/.tmux.conf
ln -s ~/projects/dotfiles/vimrc.symlink ~/.vimrc
ln -s ~/projects/dotfiles/solargraph.config.yml ~/.config/solargraph/config.yml

source ~/.bash_profile

echo "and install your tmux plugins :)";
~/.tmux/plugins/tpm/bin/install_plugins

read -p "Would you like to install NodeJS? [Y/n]" nodejs
case $nodejs in
  [Yy]* )
    asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
    read -p "Enter a specific version (the LTS at time of writing is 12.16.3) " nodejs_version
    asdf install nodejs $nodejs_version
    asdf global nodejs $nodejs_version
    ;;
  [Nn]* ) exit;;
  * ) exit;;
esac

sudo apt-get install -y
  nodejs \
  gcc \
  g++ \
  make

echo "This is going to configure YCM for vim";
sudo apt-get install -y cmake python-dev python3-dev build-essential;

vim +Plug Install +qall
vim -c "call coc#util#install()|qall"

mkdir ~/ycm_build && cd ~/ycm_build

cmake -G "Unix Makefiles" . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp && cmake --build . --target ycm_core --config Release

vim +YcmRestartServer +qall

cd ~/.vim/plugged/YouCompleteMe
./install.py --ts-completer

read -p "Would you like to install Yarn? [Y/n]" yarn
case $yarn in
  [Yy]* )
    asdf plugin-add yarn
    read -p "Enter a specific version (the LTS at time of writing is 1.17.3) " yarn_version
    asdf install yarn $yarn_version
    asdf global yarn $yarn_version
    ;;
  [Nn]* ) exit;;
  * ) exit;;
esac

read -p "Do you want to install Elixir? [Y/n] " elixir
case $elixir in
  [Yy]* ) wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb && sudo apt-get update -y && sudo apt-get install esl-erlang -y && sudo apt-get install elixir -y;;
  [Nn]* ) exit;;
  * ) exit;;
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
    vim -c "CocInstall coc-solargraph|echo 'When coc-solargraph is installed it will let you know, and you can exit with :qa'"
    ;;
  [Nn]* ) exit;;
  * ) exit;;
esac

read -p "Do you want the mysql2 gem at version 0.5.2? [Y/n] " versioned_mysql
case $versioned_mysql in
  [Yy]* )
    gem install mysql2 -v "0.5.2"
    ;;
  [Nn]* ) exit;;
  * ) exit;;
esac

echo "Moving onto database setup:"
read -p "What password do you want _root_ to be set as for mysql?" password

PASSWORD_SCRIPT="use mysql; update user set authentication_string=PASSWORD(\"${password}\") where User='root'; update user set plugin=\"mysql_native_password\" where User='root'; flush privileges; quit;"

sudo /etc/init.d/mysql stop && sudo mysqld_safe --skip-grant-tables && mysql -uroot < PASSWORD_SCRIPT && sudo /etc/init.d/mysql stop && sudo /etc/init.d/mysql start

echo '==========================================================================='
echo "Done! You can now `rm ~/setup.sh`, and there is a copy in `~/projects/dotfiles` for reference if you're interested. Please read the README to see further details. Enjoy..."
echo '==========================================================================='

