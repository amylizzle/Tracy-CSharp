#!/bin/bash
DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
c2ffi_CONFIG_FILE_PATH="$DIRECTORY/config-extract.json"

if ! [[ -x "$(command -v c2ffi)" ]]; then
  echo "Error: 'c2ffi' is not installed. Please visit https://github.com/bottlenoselabs/c2ffi for instructions to install the c2ffi tool." >&2
  exit 1
fi

c2ffi extract --config "$c2ffi_CONFIG_FILE_PATH"
