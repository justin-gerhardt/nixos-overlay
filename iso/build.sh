#!/bin/sh
set -euo pipefail

NIXPKGS=channel:nixos-unstable-small

nix-build '<nixpkgs/nixos>' -I nixos-config=iso.nix -I nixpkgs="${NIXPKGS}" -A config.system.build.isoImage
