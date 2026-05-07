### Setup

#### Install from Web

- Install `Homebrew`
- Install `oh-my-zsh`
- Install `nvm`

```bash
brew install --cask alacritty
```

```bash
brew install neovim
```

```bash
brew install ripgrep
```

```bash
brew install fzf
```

```bash
nvm install --lts
```

For XCode Command Line Tools do:

```bash
xcode-select --install
```

#### Plugins for zsh

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

At root

```bash
git clone git@github.com:junegunn/fzf-git.sh.git
```
