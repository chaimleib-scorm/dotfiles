#!/bin/bash

cmdName=pandoc

printf "%-30s" "Installing $cmdName..."
if [[ "$(which "$cmdName")" == "/usr/local/bin/$cmdName" ]]; then
    version="$("$cmdName" --version 2>&1 | grep -o '[0-9]\+\.[0-9\.]\+' | head -n1)"
    echo "Already installed $version"
else
    brew install "$cmdName"
    version="$("$cmdName" --version 2>&1 | grep -o '[0-9]\+\.[0-9\.]\+' | head -n1)"
    echo "Installed $version"
fi

