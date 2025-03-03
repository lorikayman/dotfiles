#!/bin/sh

PATH="$HOME/.local/bin:$PATH"

# misc
# ----

export VOLTA_HOME="$HOME/.volta"
BIN_VOLTA="$VOLTA_HOME/bin"

# doomemacs
BIN_EMACS="$HOME/.config/emacs/bin"

# flutter
BIN_FLUTTER="/usr/bin/flutter/bin"

PATH="$PATH:$BIN_VOLTA:$BIN_EMACS:$BIN_FLUTTER"

# Wasmer
export WASMER_DIR="$HOME/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

export PATH
