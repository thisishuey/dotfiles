# Huey's dotfiles

This is my dotfiles. There are many others like it, but this one is mine.

## Use

See https://dotfiles.github.io for more information.

## Installation

### Pre Install

Run through the following commands to update and upgrade apt and setup Fish Shell:

```
tmux new -A -s dotfiles-setup
sudo apt update
sudo apt full-upgrade
sudo apt install fish
sudo chsh -s /usr/bin/fish $(whoami)
sudo reboot
```

### Install

Once the system has rebooted, log in and run the follwoing command to kick off the install script:

```
curl -o- https://raw.githubusercontent.com/thisishuey/dotfiles/master/install/debian.sh | bash
```

### SSH Key for Github

A new SSH key was generated in the install scripts, run the following command and copy and paste the key into https://github.com/settings/ssh/new, don't worry about title, it will be automatically be set by the public key:

```
cat ~/.ssh/id_rsa.pub
```

Once you've added the key to github, to switch the origin url for the dotfiles repo you can run:

```
cd ~/.dotfiles
git remote set-url origin git@github.com:thisishuey/dotfiles.git
```

**NOTE:** When you fork another project you can use the following command to rename origin to upstream and set your fork as the new origin:

```
git remote rename origin upstream
git remote add origin <clone-url>
git push --set-upstream origin master
```

### Post Install

After initial install you should be able to use mosh to access the site, be sure that you've opened UDP ports 60000-61000 (or at least 60000-60004) for mosh access. Once you've connected via mosh you can run the following to finish setup:

```
asdf plugin-add nodejs
asdf plugin-add yarn
bash $HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install

sudo apt update
sudo apt upgrade
sudo reboot
```

## Current Theme: base16-classic-dark

- Blink Base16 Themes: https://github.com/niklaas/base16-blink
- Base16 Plugin for Vim: https://github.com/chriskempson/base16-vim
- More info on Base16: http://chriskempson.com/projects/base16/
