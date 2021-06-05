# Neovim Settings

## Installation

### Neovim
Check the following link for `nvim` installation:
```
https://github.com/neovim/neovim/wiki/Installing-Neovim
```

### Install plugin 
When you are in `nvim`, type:
```
:PlugInstall
```

### Install Silversearch fzf 
Follow installation instruction from here:
```
https://github.com/ggreer/the_silver_searcher
```

Then you need to add follwing lines to your own 
bash (or zsh) settings:
```bash
## set colrs for LS_COLORS
eval `dircolors ~/.dircolors`

# FZF Settings
if type ag &> /dev/null; then
  export FZF_DEFAULT_COMMAND='ag -g ""'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
```
