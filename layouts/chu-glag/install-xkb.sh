#!/bin/sh
# Install the chu-glag layout (Litogram) for the current user.
# System-wide alternative: copy xkb/glagolitic into
# /usr/share/X11/xkb/symbols/ and add an evdev.xml entry.
set -e
dir="${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols"
mkdir -p "$dir"
cp "$(dirname "$0")/xkb/glagolitic" "$dir/glagolitic"
echo "Installed. Activate with:"
echo "  setxkbmap -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb glagolitic -print | xkbcomp -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb - \$DISPLAY"
echo "or add 'glagolitic' to your desktop environment's input sources."
