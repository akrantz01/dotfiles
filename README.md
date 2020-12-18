# Dotfiles
Dotfiles for all my machines.

### Instructions
```shell
git clone --bare https://github.com/akrantz01/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

If there are any errors, run the following:
```shell
mkdir -p .config-backup
conifig checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
```
