#!/usr/bin/env bash

set -euo pipefail

DIR_HOME=$(pwd)
DIR_CC_REACT="$DIR_HOME/packages/cc-react"
DIR_PLAYGROUND="$DIR_HOME/playground"

source "${DIR_HOME}/scripts/log.sh"

clear
cd "$DIR_CC_REACT"
info "Cleaning all 'dist'..."
rm -rf "$DIR_CC_REACT/dist"
info "Cleaning all 'node_modules'..."
rm -rf "$DIR_CC_REACT/node_modules"
info "Re-installing packages..."
npm install
npx tsc
npm publish --access=public
