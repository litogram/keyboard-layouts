#!/bin/sh
# Install the ru-petr1708 layout (Litogram) for the current user.
# System-wide alternative: copy xkb/ru_petr1708 into
# /usr/share/X11/xkb/symbols/ and add an evdev.xml entry.
set -e
dir="${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols"
mkdir -p "$dir"
cp "$(dirname "$0")/xkb/ru_petr1708" "$dir/ru_petr1708"
echo "Installed. Activate with:"
echo "  setxkbmap -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb ru_petr1708 -print | xkbcomp -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb - \$DISPLAY"
echo "or add 'ru_petr1708' to your desktop environment's input sources."
