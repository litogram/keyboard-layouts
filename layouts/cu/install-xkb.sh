#!/bin/sh
# Install the cu layout (Litogram) for the current user.
# System-wide alternative: copy xkb/church_slavonic into
# /usr/share/X11/xkb/symbols/ and add an evdev.xml entry.
set -e
dir="${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols"
mkdir -p "$dir"
cp "$(dirname "$0")/xkb/church_slavonic" "$dir/church_slavonic"
echo "Installed. Activate with:"
echo "  setxkbmap -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb church_slavonic -print | xkbcomp -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb - \$DISPLAY"
echo "or add 'church_slavonic' to your desktop environment's input sources."
