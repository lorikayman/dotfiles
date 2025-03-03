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
  apt-rdepends"
PKGS_FLATPAK="
  org.kde.krita \
  org.keepassxc.KeePassXC \
  com.github.tchx84.Flatseal \
  org.kde.kwrite \
  org.mozilla.firefox"
PKGS_CARGO="
  ripgrep \
  zellij \
  fd-find"

sudo apt remove $PKGS_REMOVE
rm -rf ~/.firefox
sudo apt install $PKGS_TOOLS_BASE

curl --fail --show-error --silent --location https://taskfile.dev/install.sh | sh -s -- -d -b ~/.local/bin
curl --fail --show-error --silent --location "https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh" | sh
curl --fail --show-error --silent --location "https://get.volta.sh" | zsh
curl --fail --show-error --silent --location "https://astral.sh/uv/install.sh" | sh
curl --fail --show-error --silent --location "https://sh.rustup.rs" | sh

flatpak install -y $PKGS_FLATPAK
~/.cargo/bin/cargo install --locked $PKGS_CARGO_LOCKED

sudo apt install $PKGS_VT
sudo apt install $PKGS_MISC
