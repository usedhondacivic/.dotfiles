if status is-interactive
    # Commands to run in interactive sessions can go here
    source "$HOME/.cargo/env.fish"
    # config repo
    alias config='/usr/bin/git --git-dir=/home/michael/.dotfiles/ --work-tree=/home/michael'
end

# Created by `pipx` on 2024-09-24 21:05:40
set PATH $PATH ~/.local/bin
