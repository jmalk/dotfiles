# dotfiles

A backup of configuration files. Can be cloned into a directory, e.g. dotfiles/ then symlinked to from the home directory, or put in place manually.

## Prerequisites

To load plugins specified in `init.vim` and `vimrc` you will need [VimPlug](https://github.com/junegunn/vim-plug).

## Useful Tip

To make a symlink on a Mac run `ln -s /path/to/original/ /path/to/link`

# So You've Got a New MacBook?

Automating this in `new_laptop.sh`.

## Mac apps

- Authy (from App Store)
- Chrome
- Bitwarden extension for Chrome and Firefox
- Slack
- Raycast
- Rectangle

## Dev tools

- XCode command line tools - try and run `gcc` and you'll be prompted to. Get Xcode from App Store if it all fails
- Homebrew - https://brew.sh/
- Git - https://git-scm.com/download/
- By this point you should have everything you need to clone this repo and run `make_mac_symlinks.sh`
- iTerm - https://www.iterm2.com/
- Install nvm from https://github.com/nvm-sh/nvm#usage then do `nvm install --lts`

## Personal preferences

- Dotfiles, e.g. zshrc, vimrc... (mine are in github, do what you want with yours)
- Install oh-my-zsh - https://ohmyz.sh/
- Install NeoVim
- nvim, run :checkhealth
