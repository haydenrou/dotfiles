#!/bin/bash

echo "Let's check you're up to date..."
cd ~ && sudo apt-get update -y && sudo apt-get upgrade -y;

echo "Installing the basics: git, vim, tmux, wget[for installing various software], (ruby, rubygems, vim-nox, silversearcher-ag)[for vim compatability with ruby & AG searching]"
sudo apt-get install -y git vim tmux wget ruby rubygems vim-nox silversearcher-ag;

read -p "What email do you want associated with your git config?" gitemail
git config --global user.email $gitemail
read -p "Name?" gitname
git config --global user.name $gitname

mkdir ~/projects

echo "Making an SSH Key";
ssh-keygen -t rsa
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

read -p "Press <Enter> once you have added your SSH key to github. This will allow the continued configuration from [haydenrou/dotfiles]";

git clone git@github.com:haydenrou/dotfiles.git ~/projects/dotfiles

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rm ~/.bashrc ~/.bash_profile ~/.tmux.conf ~/.vimrc
ln -s ~/projects/dotfiles/bashrc.symlink ~/.bashrc
ln -s ~/projects/dotfiles/bash_profile.symlink ~/.bash_profile
ln -s ~/projects/dotfiles/tmux.conf.symlink ~/.tmux.conf
ln -s ~/projects/dotfiles/vimrc.symlink ~/.vimrc

echo "Now we'll install your vim plugins...";
vim +PluginInstall +qall

echo "and install your tmux plugins :)";
~/.tmux/plugins/tpm/bin/install_plugins

echo "This is going to configure YCM for vim";
sudo apt-get install -y cmake python-dev python3-dev;

mkdir ~/ycm_build && cd ~/ycm_build

cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp && cmake --build . --target ycm_core --config Release

echo "Time to install node";
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash - && sudo apt-get install -y nodejs gcc g++ make

echo "And yarn...";
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -y && sudo apt-get install -y yarn

while true; do
  read -p "Do you want to install Elixir [Y/n]?" elixir
  case $elixir in
    [Yy]* ) wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb && sudo apt-get update -y && sudo apt-get install esl-erlang -y && sudo apt-get install elixir -y;;
    [Nn]* ) exit;;
    * ) exit;;
  esac
done

echo "Time to install Ruby";
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.bashrc

while true; do
  read -p "Is there a specific version you want to install of ruby? [Y/n]" yn
  case $yn in
    [Yy]* ) read -p "What version? I.e. 2.6.1" v && rvm install v && rvm use v;;
    [Nn]* ) exit;;
    * ) echo "Please provide Y or n";;
  esac
done

echo "This is project specific, but we're installing mysql2 -v 0.5.2, deal with it";
gem install mysql2 -v "0.5.2"

echo "And mailcatcher is always useful";
gem install mailcatcher

echo "It's database time!"
sudo apt-get install -y libmysqlclient-dev mysql-server mysql-client

read -p "What password do you want _root_ to be set as for mysql?" password

PASSWORD_SCRIPT="use mysql; update user set authentication_string=PASSWORD(\"${password}\") where User='root'; update user set plugin=\"mysql_native_password\" where User='root'; flush privileges; quit;"

sudo /etc/init.d/mysql stop && sudo mysqld_safe --skip-grant-tables && mysql -uroot < PASSWORD_SCRIPT && sudo /etc/init.d/mysql stop && sudo /etc/init.d/mysql start

echo "Off you go, enjoy your life";
