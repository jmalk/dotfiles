# dotfiles

A backup of configuration files. Can be cloned into a directory, e.g. dotfiles/ then symlinked to from the home directory, or put in place manually.

## Prerequisites

To load plugins specified in `init.vim` and `vimrc` you will need [VimPlug](https://github.com/junegunn/vim-plug).

## Useful Tip

To make a symlink on a Mac run `ln -s /path/to/original/ /path/to/link`


# So You've Got a New MacBook?

I would like to automate a lot of this stuff.

## Mac apps

- Authy
- Chrome
  - Bitwarden
- Firefox
  - Bitwarden
- Slack
- Rectangle

## Dev tools

- XCode command line tools - try and run `gcc` and you'll be prompted to. Get Xcode from App Store if it all fails
- Homebrew - https://brew.sh/
- Git - https://git-scm.com/download/
- GitHub CLI - https://cli.github.com/
- By this point you should have everything you need to clone this repo and run `make_mac_symlinks.sh`
- iTerm - https://www.iterm2.com/
- VSCode
- Install nvm from https://github.com/nvm-sh/nvm#usage then do `nvm install --lts`

Note, could try automating some of this with Homebrew;

```
brew install git
brew install gh
```

## Personal preferences

- Dotfiles, e.g. bashrc, vimrc... (mine are in github, do what you want with yours)
- git autocomplete script - https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks
- git aliases - https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks#Git-Aliases
- Install oh-my-zsh - https://ohmyz.sh/
- Install z.sh - `brew install z` - https://github.com/rupa/z
- Install NeoVim
- nvim, run :CheckHealth
