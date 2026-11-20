#!/bin/sh
# Prints the header that lets Claude Code reach the Laarpi app's local bridge.
#
# Claude Code runs this each time it connects (its documented `headersHelper`), so a session picks
# up the app's current token by itself. The token is never stored in this plugin: the Laarpi app
# writes it, readable only by you (mode 0600), into its own data folder. The app's own copy of this
# plugin sits in that folder; a copy installed from the public marketplace lives in Claude Code's
# plugin cache and reads the file from Laarpi's fixed data folder instead.
root="${CLAUDE_PLUGIN_ROOT:-$(dirname "$0")/..}"
for headers in \
  "$root/../bridge-headers.json" \
  "$HOME/Library/Application Support/Laarpi/claude-plugin/bridge-headers.json" \
  "${XDG_CONFIG_HOME:-$HOME/.config}/Laarpi/claude-plugin/bridge-headers.json" \
  "${APPDATA:-$HOME/AppData/Roaming}/Laarpi/claude-plugin/bridge-headers.json"; do
  if [ -r "$headers" ]; then
    exec cat "$headers"
  fi
done
echo "Laarpi is not running on this computer, or has not been set up for Claude yet. Open the Laarpi app and leave it open, then try again." >&2
exit 1
