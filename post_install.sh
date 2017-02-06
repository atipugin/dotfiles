#!/bin/bash

# Use max cpus as possible for bundler
if [[ -x "$(command -v bundle)" ]]; then
  bundle config --global jobs $(sysctl -n hw.ncpu)
fi
