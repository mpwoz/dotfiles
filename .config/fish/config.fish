source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# Use abbreviations in interactive shells
if status is-interactive
    # Source abbreviations
    source ~/.config/fish/abbreviations.fish
end
