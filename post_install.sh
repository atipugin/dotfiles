#!/bin/bash

if [[ -x "$(command -v bundle)" ]]; then
  bundle config --global jobs $(sysctl -n hw.ncpu)
fi
