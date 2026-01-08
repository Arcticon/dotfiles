# dotfiles

## Video

(Video tutorial)[https://www.youtube.com/watch?v=y6XCebnB9gs]

## How to install
```bash
sudo apt install stow -y
cd ~
git clone git@github.com:Arcticon/dotfiles.git
cd dotfiles
stow -v --adopt .
```

## How to set editor variable
```bash
sudo update-alternatives --install /usr/bin/editor editor "$(command -v vim)" 100
```