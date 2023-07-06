_NOTE: This README lives in `.github` as to not clutter `$HOME`_

This repo keeps dotfiles that contain useful install and common scripts needed for all things cube.
Choose one of the following to put on your system.

## Make a new dotfiles repo from your current setup

```sh
git init --bare ~/.dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# source /usr/share/bash-completion/completions/git
# __git_complete config __git_main
```

Then use `dotgit` just like `git` to specifically manage dotfiles, e.g., you'll
likely want to push this to GitHub.

```
dotgit remote add git@github.com:<your_username>/dotfiles
dotgit push -u origin main
```

## Edit this repo and make it your own

Fork this repo onto your github account and follow these instructions to get them on your machine
```
cd ~
git clone --bare git@github.com:{your github username}/dotfiles ~/.dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotgit checkout -f
.local/bin/bootstrap.sh
```
If you have secrets in your one drive
```
.local/bin/unpack_secrets.sh
```

## Get this repo on your system with just necessities

_NOTE: The `-f` will smash local files that exist in you dotfiles repo_

```
cd ~
git clone --bare git@github.com:battellecube/dotfiles ~/.dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotgit checkout -f
.local/bin/bootstrap.sh
```
If you have secrets in your one drive
```
.local/bin/unpack_secrets.sh
```
