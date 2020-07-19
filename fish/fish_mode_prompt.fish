function fish_mode_prompt --description 'Displays the current mode'
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    switch $fish_bind_mode
      case default
        env FISH_VERSION=$FISH_VERSION bash $HOME/.dotfiles/fish/promptline_default.sh left
      case insert
        env FISH_VERSION=$FISH_VERSION bash $HOME/.dotfiles/fish/promptline_insert.sh left
      case replace_one
        env FISH_VERSION=$FISH_VERSION bash $HOME/.dotfiles/fish/promptline_default.sh left
      case visual
        env FISH_VERSION=$FISH_VERSION bash $HOME/.dotfiles/fish/promptline_visual.sh left
    end
  end
end
