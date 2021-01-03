#!/usr/bin/env bash

(
  # Change working directory to the folder containing the script and patch files
  cd "$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

  # Apply patches
  patch /usr/local/lib/python3.*/dist-packages/keras/engine/saving.py saving.py.patch
  patch /usr/local/lib/python3.*/dist-packages/keras/backend/tensorflow_backend.py tensorflow_backend.py.patch
  patch /usr/local/lib/python3.*/dist-packages/keras/callbacks/tensorboard_v1.py tensorboard_v1.py.patch
)
