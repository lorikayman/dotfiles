# dotfiles

Dotfiles managed with [chezmoi](https://github.com/twpayne/chezmoi)

> [!CAUTION]
> This is not intended to be used. Despite being a public repository, __this set of configurations is not intended for you__, nor do you likely gain much from using it due to personalized workflow.
>
> Configuration setup is designed for debian-based (since `apt`) systems, **Pop!_Os** specifically.

Apply:

```shell
sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply lorikayman && ~/.local/share/chezmoi/packages.linux.sh
```

Windows-specific:

```ps
Install-Module -Name Microsoft.WinGet.Client

[System.Environment]::SetEnvironmentVariable("Path", "%UserProfile%\AppData\Local\Microsoft\WinGet\Links;%UserProfile%\AppData\Local\Microsoft\WindowsApps;", "User")

winget install chezmoi
chezmoi init --apply lorikayman
```

Postinstall:

```sh
~/.local/share/chezmoi/packages.linux.sh
```

```powershell
powershell.exe -ExecutionPolicy Bypass -File ".local\share\chezmoi\packages.windows.ps1"
```

<p align="center">
    <img src="docs/color_scheme_example.png" style="width: 35%;"></img>
</p>

## Contents

- [dotfiles](#dotfiles)
  - [Contents](#contents)
  - [🌻 Shell](#-shell)
  - [.⚙️ Configurations](#️-configurations)

## 🌻 Shell

*`.zchrc`*

[ZSH](https://wiki.archlinux.org/title/Zsh) shell is configured with [Zinit](https://github.com/zdharma-continuum/zinit) plugin manager and [Pure prompt](https://github.com/sindresorhus/pure) recolor.

## .⚙️ Configurations

Packages and flatpak applications that are installed on script execution are specified at `run_once_install-packages.sh`. Major navigational changes a listed below.
