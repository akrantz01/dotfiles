# Dotfiles
Dotfiles for all my machines.

### Instructions
```shell
git clone --bare https://github.com/akrantz01/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

If there are any errors, run the following:
```shell
mkdir -p .dotfiles-backup
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
```
