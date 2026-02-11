#!/usr/bin/env bash
delay=0.002

GREEN="\033[32m"
RESET="\033[0m"

art=$' _   _      _ _         __        __         _     _ \n| | | | ___| | | ___    \\ \\      / /__  _ __| | __| |\n| |_| |/ _ \\ | |/ _ \\    \\ \\ /\\ / / _ \\| \'__| |/ _` |\n|  _  |  __/ | | (_) |    \\ V  V / (_) | |  | | (_| |\n|_| |_|\\___|_|_|\\___/      \\_/\\_/ \\___/|_|  |_|\\__,_|\n'

printf "\033[?25l"
trap 'printf "\033[?25h"; printf "'"$RESET"'"; echo' EXIT

printf "$GREEN"
while IFS= read -r line; do
  for ((i=0; i<${#line}; i++)); do
    printf "%s" "${line:i:1}"
    sleep "$delay"
  done
  printf "\n"
done <<< "$art"
printf "$RESET"