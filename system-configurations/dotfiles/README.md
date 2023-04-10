# dotfiles

## Update your username in following files

In following files, search and replace `your_user_name` with your user name.

- `i3/config`
- `.bashrc`
- `.bash_aliases`
- `cyclonedds.xml`
- `install_links.sh`

## Optionally, symbolically link

This section will create a symbolic link from this folder contents to where the files should be.

If you follow this step and then if you remove this folder, your configurations will be removed too.

Remove target folders/directories listed in the `install_links.sh` file.

Following command will attempt to symlink them from this repo to target directory.

```bash
$ chmod +x ./install_links.sh
$ ./install_links.sh
```


Symbolically link for Netplan Configuration;

```
$ sudo ln -s ~/dotfiles/01-network-manager-all.yaml /etc/netplan/01-network-manager-all.yaml
$ sudo netplan apply
```

İmportant! 

If you get "Too many levels of symbolic links" error when you type the "sudo netplan apply" command into the terminal; 

- You must delete 01-network-manager-all.yaml in /etc/netplan,
- Give full path for source_dir and output_dir.


## For i3-gaps
```bash
# https://regolith-desktop.com/

$ wget -qO - https://regolith-desktop.org/regolith.key | \
gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null

$ echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] \
https://regolith-desktop.org/release-ubuntu-jammy-amd64 jammy main" | \
sudo tee /etc/apt/sources.list.d/regolith.list
```

```bash
$ sudo apt update && sudo apt dist-upgrade

$ sudo apt install -y fzf \
ccache \
suckless-tools \
j4-dmenu-desktop \
rofi \
i3-gaps \
i3blocks \
xdotool \
numlockx \
ranger \
nitrogen \
gedit \
htop \
tree \
gdebi \
hexchat \
gimp \
git \
git-lfs \
cmake-curses-gui \
fonts-font-awesome \
arandr \
libpcre3-dev \
meson \
thunar \
lxappearance \
numix-gtk-theme \
numix-icon-theme \
libgtk-3-dev \
qdirstat \
screenfetch \
lm-sensors \
net-tools \
pavucontrol \
dunst \
thunar-archive-plugin \
gnome-screenshot \
autoconf \
snapd \
gnome-flashback \
ilia \
xfce4-settings \
flatpak
```

## Dependencies

https://gitlab.com/trashy/trashy

## Default directories

```bash
gsettings set org.gnome.gnome-screenshot auto-save-directory "~/Pictures/screenshots"
```

## Optionally Install ROOT
```
# https://root.cern/install/#download-a-pre-compiled-binary-distribution

# https://root.cern/install/dependencies/
$ sudo apt-get install dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
libxft-dev libxext-dev python libssl-dev

# Download latest one from here https://root.cern/install/all_releases/
# to ~/libraries/
# extract it like tar -xzvf root_v6.26.06.Linux-ubuntu20-x86_64-gcc9.4.tar.gz
```
## i3blocks

```bash
cd ~/programs
git clone https://github.com/vivien/i3blocks-contrib.git
cd i3blocks-contrib
make
```
## Drivers

```bash
# First https://superuser.com/questions/714391/how-do-i-remove-all-i386-architecture-packages-from-my-debian-installation
sudo dpkg --remove-architecture i386

sudo ubuntu-drivers autoinstall
```

## Others

```bash
sudo snap install core

sudo snap install gitkraken --classic
sudo snap install discord
sudo snap install code --classic

sudo snap install clion --classic
sudo snap install webstorm --classic
sudo snap install pycharm-community --classic

# OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt install ffmpeg obs-studio

# FSearch
sudo add-apt-repository -y ppa:christian-boxdoerfer/fsearch-daily
sudo apt install -y fsearch
```

## ROS2 Stuff

https://docs.ros.org/en/humble/Installation.html

## ccache

https://ccache.dev/manual/latest.html#_location_of_the_primary_configuration_file

```
$ sudo gedit ~/.cache/ccache/ccache.conf
```

And fill in the config file using following line

```yaml
# Set maximum cache size
max_size = 100G
```

After saving the config file, type the command into the terminal.   

```
$ ccache -c ccache.conf
```

Check max_size using the following command, it should be 100G: 

```
ccache -p
```

### Cyclone DDS

https://github.com/eclipse-cyclonedds/cyclonedds#run-time-configuration

~/cyclonedds.xml

## Theme setup

```bash
lxappearance
```

## Set Default Applications

```bash
xfce4-settings-manager
```

## Cuda

```bash
# Good way (network)

# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/#ubuntu-installation-network

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb

sudo dpkg -i cuda-keyring_1.0-1_all.deb

sudo apt update

sudo apt install cuda tensorrt-dev libcudnn8-dev

# Bad way (deb)

# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_network

# https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#installlinux-deb

export CUDAVER=11.8
export CUDNNVER=6.0.163
export OS=ubuntu2204

sudo dpkg -i cudnn-local-repo-${OS}-8.${CUDNNVER}_1.0-1_amd64.deb

sudo apt-get install libcudnn8=8.${CUDNNVER}-1+cuda${CUDAVER}

sudo apt-get install libcudnn8-dev=8.${CUDNNVER}-1+cuda${CUDAVER}
```

## flatpak
```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Unity

```bash
# https://docs.unity3d.com/hub/manual/InstallHub.html
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb unstable main" > /etc/apt/sources.list.d/unityhub-beta.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt update
sudo apt install unityhub

# https://forum.unity.com/threads/how-to-install-unity-hub-3-2-0-in-ubuntu-22-04-lts.1311612/
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb

# !Probably skip this one!
# https://docs.unity3d.com/2020.1/Documentation/Manual/GettingStartedInstallingHub.html
sudo apt install libgconf-2-4
```

# Multicast

```bash
# https://autowarefoundation.github.io/autoware-documentation/main/support/troubleshooting/

sudo ip link set multicast on {your-interface-name}
```
There are two methods in this document for set Multicast on for lo;

1) `lo multicast` will be off again after reboot in the first method;

```
$ sudo ip link set multicast on lo 
```

2) `lo multicast` will be enabled after reboot in the second method;

- Write a script, that want to run at the time of system boot, as the root user. The script is called `file_name.sh`, and it's absolute file path is `/root/.scripts/file_name.sh` Below is the script:

```
#!/usr/bin/env bash

ip link set multicast on lo
```

- Create a systemd service file for this. The name of the service must be `SERVICE-NAME.service`, and it's absolute file path is `/etc/systemd/system/` directory. Below are the contents of this service file:
```
[Unit]
Description=Set Multicast on lo
After=network.target

[Service]
ExecStart=/usr/bin/bash /root/.scripts/file_name.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

## Enabling the Service 

Running the following command will make systemd aware of our newly created systemd service file:

```
$ sudo systemctl daemon-reload
```

To enabled the service:
```
$ sudo systemctl enable SERVICE-NAME.service
```

To check if the service is active:

```
$ sudo systemctl is-enabled SERVICE-NAME.service
```

Status must be `enabled` on terminal.


# Screen sleep

```bash
# Sleep only after 10m
gsettings set org.gnome.desktop.session idle-delay 600

# Never sleep
gsettings set org.gnome.desktop.session idle-delay 0
```
