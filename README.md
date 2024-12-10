# dotfiles

Dotfiles managed with [chezmoi](https://github.com/twpayne/chezmoi)

> **WARNING**: Designed only for debian-based (since `apt`) systems, **Pop!_Os** specifically

Apply:

```shell
sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply ironkayman
```

<p align="center">
    <img src="docs/color_scheme_example.png" style="width: 35%;"></img>
</p>

## Contents

- [dotfiles](#dotfiles)
  - [Contents](#contents)
  - [🌻 Shell](#-shell)
  - [.⚙️ Configurations](#️-configurations)
    - [Tilix](#tilix)
    - [Krita](#krita)
    - [Firefox](#firefox)
    - [Git](#git)
    - [Zed](#zed)
    - [Language Servers](#language-servers)

## 🌻 Shell

*`.zchrc`*

[ZSH](https://wiki.archlinux.org/title/Zsh) shell is configured with [Zinit](https://github.com/zdharma-continuum/zinit) plugin manager and [Pure prompt](https://github.com/sindresorhus/pure) recolor.

## .⚙️ Configurations

Packages and flatpak applications that are installed on script execution are specified at `run_once_install-packages.sh`.

### Tilix

| Action        | Shortcut   |
|:-------------:|:----------:|
| Switch tabs   | Ctrl Up/Dn |
| Switch panes  | Alt Arrows |

### Krita

*`.var/app/org.kde.krita/config/private_kritashortcutsrc`*

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

*`.var/app/org.mozilla.firefox/dot_mozilla/private_firefox/user.js`*

Fine-tined [arkenfox's user.js](https://github.com/arkenfox/user.js) configuration file outside of any profile

### Git

*`.gitconfig`*

Specified [Git Cinnabar](https://github.com/glandium/git-cinnabar) version commit

### Zed

*`.var/app/dev.zed.Zed/config/zed`*

VS Code Keymaps and color theme

### Language Servers

| Language | Config |
|:--------:|:------:|
| Zig | `.config/zls.json` |
