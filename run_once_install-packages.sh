#!/bin/sh

sudo apt install \
	flatpak \
	curl \
	zsh \
	qemu \
	uml-utilities \
	virt-manager \
	git \
	wget \
	libguestfs-tools \
	p7zip-full \
	make \
    dmg2img \
	tilix \
	bleachbit \
	apt-rdepends \
	spice-vdagent \
	cockpit cockpit-machines \
	wget apt-transport-https software-properties-common

sudo apt remove firefox

# zinit install
sh -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# volta Node version manager
curl https://get.volta.sh | sh
# rust over rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Task taskrunner
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin

flatpak install \
	org.kde.krita \
	org.keepassxc.KeePassXC \
	net.drawpile.drawpile \
	dev.lapce.lapce \
	com.boxy_svg.BoxySVG \
	org.inkscape.Inkscape \
	io.dbeaver.DBeaverCommunity \
	im.riot.Riot \
	org.apache.directory.studio \
	com.github.tchx84.Flatseal \
	org.gimp.GIMP \
	org.kde.kwrite \
	org.mozilla.firefox \
	com.jgraph.drawio.desktop \
	org.shotcut.Shotcut

cargo install \
	ripgrep \
	fd-find \
	viu


# Powershell
##################################
# Get the version of Ubuntu
source /etc/os-release
# Download the Microsoft repository keys
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb
# Register the Microsoft repository keys
sudo dpkg -i packages-microsoft-prod.deb
# Delete the Microsoft repository keys file
rm packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
sudo apt-get update
# Install PowerShell
sudo apt-get install -y powershell


