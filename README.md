# dotfiles

## Requirements

### Stow

Archlinux

```sh
sudo pacman -S stow
```

MacOS

```sh
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

## Applications

### TPM

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### OhMyZsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### tmux

Archlinux

```
sudo pacman -S tmux
```

MacOS

```
brew install tmux
```
