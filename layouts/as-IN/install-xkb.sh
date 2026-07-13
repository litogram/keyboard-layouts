#!/bin/sh
# Install the as-IN layout (Litogram) for the current user.
# System-wide alternative: copy xkb/as_inscript into
# /usr/share/X11/xkb/symbols/ and add an evdev.xml entry.
set -e
dir="${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols"
mkdir -p "$dir"
cp "$(dirname "$0")/xkb/as_inscript" "$dir/as_inscript"
echo "Installed. Activate with:"
echo "  setxkbmap -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb as_inscript -print | xkbcomp -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb - \$DISPLAY"
echo "or add 'as_inscript' to your desktop environment's input sources."
