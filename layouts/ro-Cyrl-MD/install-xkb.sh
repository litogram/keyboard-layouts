#!/bin/sh
# Install the ro-Cyrl-MD layout (Litogram) for the current user.
# System-wide alternative: copy xkb/md_cyrillic into
# /usr/share/X11/xkb/symbols/ and add an evdev.xml entry.
set -e
dir="${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols"
mkdir -p "$dir"
cp "$(dirname "$0")/xkb/md_cyrillic" "$dir/md_cyrillic"
echo "Installed. Activate with:"
echo "  setxkbmap -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb md_cyrillic -print | xkbcomp -I${XDG_CONFIG_HOME:-$HOME/.config}/xkb - \$DISPLAY"
echo "or add 'md_cyrillic' to your desktop environment's input sources."
