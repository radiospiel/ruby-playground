#!/bin/bash
# This script fetches the ruby-playground git repository into a new directory, 
# and runs post-setup scripts.
set -eu -o pipefail

REPO=https://github.com/radiospiel/ruby-playground
SCRIPT=https://raw.githubusercontent.com/radiospiel/ruby-playground/master/scripts/setup.sh

# -- usage --------------------------------------------------------------------

function help() {
  local msg=$1

  cat <<TXT
Usage: run as

  curl -s $SCRIPT | bash -s - path/to/new/dir

TXT

  printf "%s\n\n" "$1"

  exit 1
}

# -- check args ---------------------------------------------------------------

# we need an argument

[ "${1:-}" ] || help "missing path/to/new/dir argument"
! [ -e "$1" ] || help "target directory exists already"

# -- run setup ----------------------------------------------------------------

# 1. create parent directory
PATH_TO_DIR="$1"
mkdir -p "$(dirname "$PATH_TO_DIR")"

# 2. checkout repo.
git clone --depth=1 --branch=master $REPO.git $PATH_TO_DIR

(
  cd "$PATH_TO_DIR"

  # 3. if direnv is installed allow the repo's .envrc
  if type -p direnv > /dev/null ; then
    direnv allow
  fi

  # 4. uncouple from $REPO
  git remote rm origin
  rm -rf .git

  # 5. initialize repository
  git init
  git add .
  git commit -m "Initial import from $REPO"

  # 6. run bundler, other per repo configuration
  bundle install
)

cat <<MSG
Success: your new repository is prepared in $PATH_TO_DIR. 

For more info see $REPO
MSG

cd "$PATH_TO_DIR"
