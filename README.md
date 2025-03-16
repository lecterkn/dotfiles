# dotfiles

## Requirements

### Stow

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

```
brew install tmux
```

### Sketchybar

```sh
brew install FelixKratz/formulae/sketchybar
```

### yabai

```sh
brew install koekeishiya/formulae/yabai
```

#### SIP

Syetem Integrity Protection should be disabled

```sh
csrutil status
```

### skhd

```sh
brew install koekeishiya/formulae/skhd
```
