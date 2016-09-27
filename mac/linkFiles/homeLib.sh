#!/bin/bash
# called by ../linkFiles.sh
# assumes that install_common.sh has been sourced and $mac_dir has been set

pushd "$mac_dir/home" >/dev/null
mkdir -p "$HOME/Library/Application Support/ControllerMate"
_lnargs \
    "Library/Application Support/ControllerMate/Programming.plist" \
    "Library/Keyboard Layouts/Hebrew-Biblical.keylayout" \
    "Library/Keyboard Layouts/Hebrew-Biblical.icns" \
    "Library/Preferences/com.apple.finder.plist" \
    "Library/Preferences/com.apple.Terminal.plist" \
    "Library/Preferences/com.apple.HIToolbox.plist" \
    "Library/Preferences/com.googlecode.iterm2.plist"
popd >/dev/null

