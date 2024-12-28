# dotfiles

## Requirements

### OhMyZsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### NeoVim Packer

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### TPM

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Stow

```sh
# Archlinux
sudo pacman -S stow

# MacOS
brew install stow
```

## Installation

### 1. Clone

```sh
git clone git@github.com:lecterkn/dotfiles.git ~/dotfiles
```

### 2. Run Stow

```sh
cd ~/dotfiles

stow .
```
