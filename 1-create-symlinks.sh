#!/bin/bash

echo "Creating symlinks..."
#Gets the full path of the current directory
baseDir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

### Create dir if does not exist

[ ! -d "~/.mpd/" ] &&  mkdir -p ~/.mpd
[ ! -d "~/.ncmpcpp" ] &&  mkdir -p ~/.ncmpcpp
[ ! -d "~/Music/mpd-playlists" ] &&  mkdir -p ~/Music/mpd-playlists \
  && touch ~/.mpd/{mpd.db,mpd.log,mpd.pid,mpdstate} \
  && chmod 774 ~/Music/mpd-playlists  ~/.mpd

  # sudo gpasswd -a mpd audio
  # sudo gpasswd -a mpd <your login group>

[ ! -d "~/Music/lyrics" ] &&  mkdir -pv ~/Music/lyrics
[ ! -d "~/.config/nvim" ] &&  mkdir -pv ~/.config/nvim
[ ! -d "~/.config/lf" ] &&  mkdir -pv ~/.config/lf
[ ! -d "~/.config/zathura" ] &&  mkdir -pv ~/.config/zathura
[ ! -d "~/.config/neofetch" ] &&  mkdir -pv ~/.config/neofetch
[ ! -d "~/.config/cava" ] &&  mkdir -pv ~/.config/cava
[ ! -d "~/.config/rofi" ] &&  mkdir -pv ~/.config/rofi
[ ! -d "~/.local/bin" ] &&  mkdir -pv ~/.local/bin
[ ! -d "~/.config/bspwm" ] &&  mkdir -pv ~/.config/bspwm
[ ! -d "~/.config/bspwm/scripts" ] &&  mkdir -pv ~/.config/bspwm/scripts
[ ! -d "~/.config/sxhkd" ] &&  mkdir -pv ~/.config/sxhkd
[ ! -d "~/.config/polybar" ] &&  mkdir -pv ~/.config/polybar
[ ! -d "~/.config/polybar/scripts" ] &&  mkdir -pv ~/.config/polybar/scripts

### Create symlinks

ln -s ${baseDir}/zshrc ~/.zshrc
ln -s ${baseDir}/config/zathura/zathurarc ~/.config/zathura
ln -s ${baseDir}/config/cava/config ~/.config/cava/config
ln -s ${baseDir}/config/neofetch/config.conf ~/.config/neofetch/config.conf

for i in $(ls ${baseDir}/config/nvim); do
  ln -s ${baseDir}/config/nvim/$i ~/.config/nvim
done

for i in $(ls ${baseDir}/config/lf); do
  ln -s ${baseDir}/config/lf/$i ~/.config/lf
done

for i in $(ls ${baseDir}/local/bin); do
  ln -s ${baseDir}/local/bin/$i ~/.local/bin
done

for i in $(ls ${baseDir}/config/bspwm); do
  ln -s ${baseDir}/config/bspwm/$i ~/.config/bspwm
done

for i in $(ls ${baseDir}/config/bspwm/scripts); do
  ln -s ${baseDir}/config/bspwm/scripts/$i ~/.config/bspwm/scripts
done

for i in $(ls ${baseDir}/config/polybar); do
  ln -s ${baseDir}/config/polybar/$i ~/.config/polybar
done

for i in $(ls ${baseDir}/config/polybar/scripts); do
  ln -s ${baseDir}/config/polybar/scripts/$i ~/.config/polybar/scripts
done

for i in $(ls ${baseDir}/config/rofi); do
  ln -s ${baseDir}/config/rofi/$i ~/.config/rofi
done

ln -s ${baseDir}/mpd/mpd.conf ~/.mpd/mpd.conf
ln -s ${baseDir}/.ncmpcpp/bindings ~/.ncmpcpp/bindings
ln -s ${baseDir}/.ncmpcpp/config ~/.ncmpcpp/config
ln -s ${baseDir}/config/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc

# sxhkd bspwm rofi polybar

#sudo ln -s ${baseDir}/git-sync.sh /etc/cron.hourly/git-sync.sh

#if [ ! -d ${HOME}/.config/iris-micro ]; then
  # Dim/yellow screen
#  git clone git@gitlab.com:qrsna/iris-micro.git ~/.config/iris-micro
#fi
