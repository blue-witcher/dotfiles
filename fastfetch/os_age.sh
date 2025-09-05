#!/usr/bin/env sh

function os_age() {
  current_date=$(date +%s)
  install_date=$(stat / | grep -Po 'Birth: \K[[:graph:]]+')
  install_date=$(date -d "$install_date" +%s)
  since=$((current_date - install_date))
  days=$((since / 86400))
  echo $days
}

if command -v grep >/dev/null 2>&1 && command -v date >/dev/null 2>&1; then
  os_age
fi
