#!/bin/sh
# Install the or-IN layout (Litogram) for the current user.
# System-wide alternative: copy xkb/or_inscript into
# /usr/share/X11/xkb/symbols/ and add an evdev.xml entry.
set -e
dir="${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols"
mkdir -p "$dir"
cp "$(dirname "$0")/xkb/or_inscript" "$dir/or_inscript"
echo "Installed. Activate with:"
echo "  setxkbmap -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb or_inscript -print | xkbcomp -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb - \$DISPLAY"
echo "or add 'or_inscript' to your desktop environment's input sources."
