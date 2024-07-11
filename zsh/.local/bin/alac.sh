function alac {
  CURRENT_DIR=$(pwd)
  alacritty --working-directory=$CURRENT_DIR &; disown
}
