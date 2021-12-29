# Vimplug
- Plugin manager
- Contributors create Vim config files and share them to a platform. Vimplug provides a shorthand to download them to a reserved folder, then call shorthand methods to load those config files (plugins) to your .vimrc.

# Reference
- Repo: https://github.com/junegunn/vim-plug

# Quick start
- This command will download the vim script into the vim's autoload folder.
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- Use vimplug methods to install and load plugins in ~/.vimrc file.
  - Download my sample.vimrc to ~/.vimrc
  - Reload .vimrc and `:PlugInstall` to install plugins.

# Commands
- PlugInstall [name ...]
- PlugUpdate [name ...]
- PlugClean [!]
- PlugStatus

