# dotfiles

Dotfiles managed with [chezmoi](https://github.com/twpayne/chezmoi)

> [!CAUTION]
> This is not intended to be used. Despite being a public repository, __this set of configurations is not intended for you__, nor do you likely gain much from using it due to personalized workflow.
>
> Configuration setup is designed for debian-based (since `apt`) systems, **Pop!_Os** specifically.

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

Packages and flatpak applications that are installed on script execution are specified at `run_once_install-packages.sh`. Major navigational changes a listed below.

### Tilix

| Action        | Shortcut   |
|:-------------:|:----------:|
| Switch panes | Alt Arrows |
| Switch to tab to the Left/Right | Alt Shift Left/Right |
| Copy selection | Ctrl c |
| Paste selection | Ctrl v |

### Zed

*`.var/app/dev.zed.Zed/config/zed`*

Zed default keymap, except for:

| Action        | Shortcut   |
|:-------------:|:----------:|
| Workspace::Switch active panes | Alt Arrows |
| Workspace::Switch to tab to the left/right | Alt Shift Left/Right |
| Terminal::Copy selection | Ctrl c |
| Terminal::Paste selection | Ctrl v |

### Krita

*`.var/app/org.kde.krita/config/private_kritashortcutsrc`*

| Action                  | Shortcut        |
|:------------------------|:---------------:|
| Color pick              | Ctrl LMB        |
| Rotate canvas           | Shift LMB       |
| Zoom canvas             | Shift touch CLW |
| Freehand selection tool | S               |
| Freehand Brush mode     | B               |
| Transform tool          | Ctrl t          |
| Move tool               | t          |
| Deselect                | Ctrl Shift a    |

### Firefox

*`.var/app/org.mozilla.firefox/dot_mozilla/private_firefox/user.js`*

Fine-tined [arkenfox's user.js](https://github.com/arkenfox/user.js) configuration file outside of any profile

### Git

*`.gitconfig`*

Specified [Git Cinnabar](https://github.com/glandium/git-cinnabar) version commit

### Language Servers

| Language | Config |
|:--------:|:------:|
| Zig | `.config/zls.json` |
