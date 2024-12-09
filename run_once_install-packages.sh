#!/bin/sh

sudo apt install \
	flatpak \
	curl \
	zsh \
	tilix \
	apt-rdepends \
	spice-vdagent

sudo apt remove firefox

# zinit install
sh -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

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
	com.jgraph.drawio.desktop

