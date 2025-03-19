set -x

PKGS_REMOVE="
  firefox"
PKGS_TOOLS_BASE="
  flatpak
  zsh
  git
  curl
  wget"
PKGS_VT="
  qemu \
  qemu-system-arm \
  uml-utilities \
  virt-manager \
  libguestfs-tools \
  spice-vdagent"
PKGS_MISC="
  p7zip-full \
  make \
  dmg2img \
  tilix \
  bleachbit \
  apt-rdepends"
PKGS_FLATPAK="
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
  org.shotcut.Shotcut"
PKGS_CARGO="
  ripgrep \
  fd-find \
  viu"
PKGS_CARGO_LOCKED="
  zellij"

sudo apt remove $PKGS_REMOVE
rm -rf ~/.firefox
sudo apt install $PKGS_TOOLS_BASE

curl --fail --show-error --silent --location https://taskfile.dev/install.sh | sh -s -- -d -b ~/.local/bin
curl --fail --show-error --silent --location "https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh" | sh
curl --fail --show-error --silent --location "https://get.volta.sh" | zsh
curl --fail --show-error --silent --location "https://astral.sh/uv/install.sh" | sh
curl --fail --show-error --silent --location "https://sh.rustup.rs" | sh
curl --fail --show-error --silent --location "https://ollama.com/install.sh" | sh

flatpak install -y $PKGS_FLATPAK
~/.cargo/bin/cargo install $PKGS_CARGO
~/.cargo/bin/cargo install --locked $PKGS_CARGO_LOCKED

sudo apt install $PKGS_VT
sudo apt install $PKGS_MISC
