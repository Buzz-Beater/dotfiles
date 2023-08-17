#!/bin/bash
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# unity-tweak-tool and its preconditions
sudo apt install notify-osd overlay-scrollbar unity-tweak-tool gnome-tweak-tool -y

# tex and media application
sudo apt install texmaker vim emacs vlc inkscape ffmpeg -y

# system libraries
sudo apt install synaptic openssh-server htop git gitk ntpdate npm timelimit ppa-purge gnome-shell-extension-manager gnome-shell-extension-system-monitor tree tmux -y

# building tools (gcc 4.7/4.9, g++ 4.7/4.9 obsolete)
sudo apt install cmake-qt-gui cmake-curses-gui clang clanqwg-format -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update
sudo apt-get install gcc-7 gcc-8 g++-7 g++-8 -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 20
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 30
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 30

# python related
sudo apt install ipython python python3 python-pip python3-pip python3-xlib python3-pillow python3-pyqt5 python3-requests virtualenvwrapper python-pygame python-scipy python-dev python-tk python-imaging-tk -y

# libraries
sudo apt install libsparsehash-dev curl i3 mesa-utils scons petsc-dev freeglut3-dev libmetis-dev libopenvdb-dev libgtest-dev libzmqpp-dev liblua5.2-dev libzmqpp-dev libilmbase-dev libopenexr-dev compizconfig-settings-manager avahi-daemon avahi-discover avahi-utils libnss-mdns mdns-scan linux-image-extra-virtual p7zip-full unrar-free imagemagick kolourpaint4 libspatialindex-dev libgeos-dev liblapack-dev libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler shutter redshift redshift-gtk libglew-dev libglfw3-dev alien libcgal-dev libcgal-qt5-dev gstreamer1.0-libav libturbojpeg libjpeg-turbo8-dev meld swig python-qt4 libmagick++-dev libcsfml-dev gtk-recordmydesktop tesseract-ocr-eng tesseract-ocr-chi-tra tesseract-ocr-chi-sim lm-sensors graphviz-dev samba-common-bin llvm-dev libglm-dev ntp -y

# time and date fix
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z" && sudo hwclock --systohc && ntpdate -d time1.ucla.edu

# Newest NVIDIA driver available, official ppa 
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
# install drivers according to available version numbers

# upgrade
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# personal theme
sudo add-apt-repository ppa:numix/ppa -y
sudo apt-add-repository ppa:papirus/papirus -y # icon
sudo apt update
sudo apt install numix-icon-theme numix-icon-theme-circle papirus-icon-theme -y
sudo apt install arc-theme -y

# google chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y
rm google-chrome-stable_current_amd64.deb

# # dropbox
# cd ~/Downloads
# wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
# sudo dpkg -i dropbox_2015.10.28_amd64.deb
# sudo apt install -f -y
# rm dropbox_2015.10.28_amd64.deb

# sublime text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y

# Webpage development set up
sudo apt install ruby ruby-dev make build-essential -y
sudo gem install jekyll bundler
bundle exec jekyll serve
bundle install

# # java environment
# sudo apt install openjdk-11-jdk -y

# GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb # gitkraken
dpkg -i gitkraken-amd64.deb
rm gitkraken-amd64.deb

# # git and github settup
# sudo apt install xclip
# ssh-keygen -t rsa -b 4096 -C "jerryjiabx@gmail.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# xclip -sel clip < ~/.ssh/id_rsa.pub
# # here copy ssh-key to github account
# git config --global user.email "jerryjiabx@gmail.com"
# git config --global user.name "Baoxiong Jia"
# git config --global push.default simple

# zsh
sudo apt install zsh fonts-powerline -y
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" 

