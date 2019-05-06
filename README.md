# Huey's dotfiles

This is my dotfiles. There are many others like it, but this one is mine.

## Use

See https://dotfiles.github.io for more information.

## Installation

**Amazon**

```
curl -o- https://raw.githubusercontent.com/thisishuey/dotfiles/master/install/amazon.sh | bash
```


**Ubuntu**

```
curl -o- https://raw.githubusercontent.com/thisishuey/dotfiles/master/install/ubuntu.sh | bash
```


**NOTE:** Once you've created a new ssh key and added it to github, to switch the origin url you can run:

```
git remote set-url origin <clone-url>
```


**NOTE:** When you fork another project you can use the following command to rename origin to upstream and set your fork as the new origin:

```
git remote rename origin upstream
git remote add origin <clone-url>
git push --set-upstream origin master
```

## Font

- For my current airline/promptline/tmuxline setup a powerline patched font is needed to display special characters.
- I've used the Nerd Fonts complete patched version `hack` for blink and it can be found here:
  - https://raw.githubusercontent.com/thisishuey/dotfiles/master/terminal/fonts
- The TTF version can be found here:
  - https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack
- I've actually switched to Blink's built in Fira Code with ligature and patched font support

## Current Theme: base16_default-dark

- Blink Base16 Themes: https://github.com/niklaas/base16-blink
- Some Base16 Themes are available for Airline: https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes
- Base16 Plugin for Vim: https://github.com/chriskempson/base16-vim
- Base16 Plugin for shell: https://github.com/chriskempson/base16-shell
- More info on Base16: http://chriskempson.com/projects/base16/

## Intro to Vim

- http://nvie.com/posts/how-i-boosted-my-vim/
- http://astonj.com/tech/vim-for-ruby-rails-and-a-sexy-theme/
- https://github.com/shawncplus/vim-classes
- http://learnvimscriptthehardway.stevelosh.com
- https://shapeshed.com/vim-netrw/
- http://nerditya.com/code/guide-to-neovim/
- https://www.linode.com/docs/tools-reference/tools/how-to-install-neovim-and-plugins-with-vim-plug/
- https://bhilburn.org/stop-being-scared-of-vim/

## Additional Reading

- https://shapeshed.com/vim-packages/
- https://shapeshed.com/vim-netrw/
- http://eseth.org/2007/vim-buffers.html
- http://vim.wikia.com/wiki/Vim_buffer_FAQ
- http://vim.wikia.com/wiki/VimTip686
- http://www.vim.org/
- https://hackernoon.com/a-gentle-introduction-to-tmux-8d784c404340

## Dotfiles Information

- https://github.com/shawncplus/dotfiles
- https://github.com/leomao/dotfiles
- https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
- https://gist.github.com/stumash/da6f39e10d55878567563a452c903c8a
- https://github.com/Parth/dotfile

## Misc.

- http://homeonrails.com/2016/05/truecolor-in-gnome-terminal-tmux-and-neovim/
- https://unix.stackexchange.com/questions/202918/how-do-i-remotely-edit-files-via-ssh
- https://github.com/tpope
- https://github.com/powerline/fonts
- https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
- https://github.com/Lokaltog/vim-powerline/blob/09c0cea859a2e0989eea740655b35976d951a84e/autoload/Powerline/Functions/fugitive.vim
- https://github.com/Lokaltog/vim-powerline/blob/09c0cea859a2e0989eea740655b35976d951a84e/autoload/Pl/Parser.vim
- https://github.com/leomao
- http://fideloper.com/mac-vim-tmux

## Additional Resources

Monoco for Powerline (for iTerm on Mac) https://gist.github.com/baopham/1838072
