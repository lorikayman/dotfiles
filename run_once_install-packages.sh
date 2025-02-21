#!/bin/sh

sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
~/.local/bin/task --taskfile ~/.local/share/chezmoi/deploy.yml deploy
