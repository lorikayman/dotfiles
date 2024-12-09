# dotfiles

Dotfiles managed with [chezmoi](https://github.com/twpayne/chezmoi)

Apply:
```sh
sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply ironkayman
```

### 🌻 Shell:
[ZSHell](https://wiki.archlinux.org/title/Zsh)) is configured with [Zinit](https://github.com/zdharma-continuum/zinit) plugin manager and [Pure prompt](https://github.com/sindresorhus/pure) recolor.

### .⚙️ Configurations

Packages and flatpak applications that are installed on scrpt execution are specified at `run_once_install-packages.sh`
