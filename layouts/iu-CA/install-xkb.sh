#!/bin/sh
# Install the iu-CA layout (Litogram) for the current user.
# System-wide alternative: copy xkb/inuktitut into
# /usr/share/X11/xkb/symbols/ and add an evdev.xml entry.
set -e
dir="${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols"
mkdir -p "$dir"
cp "$(dirname "$0")/xkb/inuktitut" "$dir/inuktitut"
echo "Installed. Activate with:"
echo "  setxkbmap -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb inuktitut -print | xkbcomp -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb - \$DISPLAY"
echo "or add 'inuktitut' to your desktop environment's input sources."
