_NOTE: This README lives in `.github` as to not clutter `$HOME`_

This repo keeps dotfiles that contain useful install scripts and common scripts needed for all things cube.
Choose one of the following to put on your system.

We suggest two options within this repo. The top suggestion is that you fork this repo to start your own set of dotfiles. The next suggestion is to just use this repo as a quick start to install tools.


## Fork this repo onto your github account to create your own customization

```sh
cd ~
git clone --bare git@github.com:{your github username}/dotfiles ~/.dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotgit checkout -f
```
To install all the required packages
```sh
./local/bin/bootstrap
```
To add changes to the repo you can use normal git functions with the dotgit command.


## Grab these files and install the basics

This will just add the necessary tools to the environment
_NOTE: The `-f` will smash local files that exist in you dotfiles repo_

```sh
cd ~
git clone --bare git@github.com:battellecube/dotfiles ~/.dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
dotgit checkout -f
.local/bin/bootstrap.sh
```
## Make a new dotfiles repo from your current setup
```sh
git init --bare ~/.dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Then use `dotgit` just like `git` to specifically manage dotfiles, e.g., you'll
likely want to push this to GitHub.

```
dotgit remote add git@github.com:<your_username>/dotfiles
dotgit push -u origin main
```
