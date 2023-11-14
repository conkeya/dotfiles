_NOTE: This README lives in `.github` as to not clutter `$HOME`_

This repo keeps dotfiles that contain useful install scripts and common scripts needed for all things cube.
Choose one of the following to put on your system.

We suggest two options within this repo. The top suggestion is that you fork this repo to start your own set of dotfiles. The next suggestion is to just use this repo as a quick start to install tools.


## Do This After WSL config

```sh
cd ~
git clone --bare git@github.com:conkeya/dotfiles ~/.dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotgit checkout -f
.local/bin/install-tools.sh
```

To add changes to the repo you can use normal git functions with the dotgit command.
