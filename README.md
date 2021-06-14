# Neovim Settings

## Installation

### Neovim
Check the following link for `nvim` installation:
```
https://github.com/neovim/neovim/wiki/Installing-Neovim
```

### Install Vim-Plugin manager
Follow the instrunctions below:
```
https://github.com/junegunn/vim-plug
```

### Install the Nerdfonts 
Download any nerdfonts from 
```
https://www.nerdfonts.com/font-downloads
```

Or you can download from github:
```
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts
```

Once you downloaded, you have to unzip file in the
`~/.fonts` directory. Then run `fc-cache -fv` to 
manually rebuild the font cache.

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

### Clipboard settings
If you are in WSL, you need to install `win32yank` and add to your path with the name "win32yank". And also uncomment the related script from `keys/mapping.vim` file.
