# dotfiles

Dotfiles managed with [chezmoi](https://github.com/twpayne/chezmoi)

Apply:
```shell
sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply ironkayman
```

<p align="center">
    <img src="docs/color_scheme_example.png" style="width: 35%;"></img>
</p>

### Contents
- [dotfiles](#dotfiles)
    - [Contents](#contents)
  - [🌻 Shell:](#-shell)
  - [.⚙️ Configurations](#️-configurations)
    - [Krita](#krita)
    - [Firefox](#firefox)
    - [Git](#git)


## 🌻 Shell:

[ZSH](https://wiki.archlinux.org/title/Zsh) shell is configured with [Zinit](https://github.com/zdharma-continuum/zinit) plugin manager and [Pure prompt](https://github.com/sindresorhus/pure) recolor.

## .⚙️ Configurations

Packages and flatpak applications that are installed on script execution are specified at `run_once_install-packages.sh`.

> **Note**: Designed only for debian-based (since `apt`) systems, Pop_Os specifically

### Tilix

| Action        | Shortcut   |
|:-------------:|:----------:|
| Switch tabs   | Ctrl Up/Dn |
| Switch panes  | Alt Arrows |

### Krita
*`dot_var/app/org.kde.krita/config/private_kritashortcutsrc`*

| Action                  | Shortcut        |
|:------------------------|:---------------:|
| Color pick              | Ctrl LMB        |
| Rotate canvas           | Shift LMB       |
| Zoom canvas             | Shift touch CLW |
| Freehand selection tool | S               |
| Freehand Brush mode     | B               |
| Transform tool          | Ctrl T          |
| Move tool               | T               |
| Deselect                | Ctrl Shift A    |

### Firefox
*`dot_var/app/org.mozilla.firefox/dot_mozilla/private_firefox/user.js`*

[arkenfox's user.js](https://github.com/arkenfox/user.js) configuration file

### Git
*`dot_gitconfig`*

Specified [Git Cinnabar](https://github.com/glandium/git-cinnabar) version commit
