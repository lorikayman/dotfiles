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
# uv python manager
curl -LsSf https://astral.sh/uv/install.sh | sh
# Task taskrunner
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
# ollama
curl -fsSL https://ollama.com/install.sh | sh

flatpak install \
	org.kde.krita \
	io.github.OpenToonz \
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
cargo install --locked \
  zellij
