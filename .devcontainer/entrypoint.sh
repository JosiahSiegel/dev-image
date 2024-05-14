#!/bin/bash

if [ -n "$USER_PASSWORD" ]; then
  echo "app:$USER_PASSWORD" | chpasswd
fi

exec "$@"
