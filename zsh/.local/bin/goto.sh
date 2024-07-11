#!/bin/bash


function goto {
  SEARCH_DIR=$1
  GOTO_DIR="${SEARCH_DIR:-$(pwd)}"

  if ! command -v fzf &> /dev/null
  then
      echo "fzf could not be found"
      return
  fi

  # find and select directory with fzf
  SELECTED_DIR=$(find $GOTO_DIR -type d -print | fzf)

  if [ -z "${SELECTED_DIR}" ]; then 
  else 
    cd $SELECTED_DIR
  fi
}
