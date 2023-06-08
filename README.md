# dotfiles

## How to install
```bash
cd ~
git init
git remote add origin git@github.com:Arcticon/dotfiles.git
git fetch
git checkout master
git reset --mixed origin/master
```

## How to set editor variable
```bash
sudo update-alternatives --install /usr/bin/editor editor "$(command -v vim)" 100
```