#!/bin/bash

# AI-powered IDE by Google — https://antigravity.google
# No native Fedora/RPM repo available; install via Flatpak if published,
# otherwise fall back to the distro-agnostic AppImage approach.
if flatpak search antigravity 2>/dev/null | grep -qi "antigravity"; then
  flatpak install -y flathub com.google.Antigravity
else
  echo "Antigravity is not yet available as a Flatpak on Fedora. Please check https://antigravity.google for a Linux installer."
fi
