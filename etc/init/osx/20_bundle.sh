#!/bin/bash

# Stop script if errors occur
trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu

# Load vital library that is most important and
# constructed with many minimal functions
# For more information, see etc/README.md
. "$DOTPATH"/etc/lib/vital.sh

# This script is only supported with OS X
if ! is_osx; then
    log_fail "error: this script is only supported with osx"
    exit 1
fi

if has "brew"; then

  for formula in $(cat "$DOTPATH/etc/init/assets/brew/formulas.txt"); do
    if brew install "$formula" > /dev/null 2>&1; then
      log_pass " + $formula was successfully installed"
    else
      log_fail " x [error] $formula was unsuccessfully installed";
    fi
  done

else
    log_fail "error: require: brew"
    exit 1
fi

