#!/bin/bash
git clone --bare git@github.com:michael-manley/DotFiles.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Deleting original files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} rm -rf {}
fi;
config checkout
config config status.showUntrackedFiles no
config submodule init
config submodule update

