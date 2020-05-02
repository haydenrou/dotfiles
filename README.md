# dotfiles
This repository contains configuration files and setup for my current setup.

## What and why
You may want to use this setup if you are interested in or use any of the below features.

### Installed software
- [asdf-vm](https://github.com/asdf-vm/asdf)
- tmux with [tpm](https://github.com/tmux-plugins/tpm) and [tmux themepack](https://github.com/jimeh/tmux-themepack)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)
- [nnn](https://github.com/jarun/nnn)
- mysql
- git
- [Ruby](https://github.com/ruby/ruby)
- [Elixir](https://elixir-lang.org/)
- yarn

## Vim

![Dotfiles Demo](https://i.imgur.com/bFbXSK0.mp4)

### Included plugins
- [vim-plug](https://github.com/junegunn/vim-plug)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [nerdtree](https://github.com/preservim/nerdtree)
- [gruvbox theme](https://github.com/morhetz/gruvbox)
- [YouCompleteMe (Awesome JS completion)](https://github.com/ycm-core/YouCompleteMe)
- [coc.nvim (Used for Ruby completion with Solargraph LSP)](https://github.com/neoclide/coc.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [ale](https://github.com/dense-analysis/ale)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-markdown](https://github.com/plasticboy/vim-markdown)
- [emmet-vim](https://github.com/mattn/emmet-vim)
- [vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [vim-easymotion](https://github.com/easymotion/vim-easymotion)
- [vim-system-copy](https://github.com/christoomey/vim-system-copy)
- [vim-surround](https://github.com/tpope/vim-surround)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [fzf.vim](https://github.com/junegunn/fzf.vim)

### General usage
Most of the key binds are self explanatory within the vimrc but here are some useful ones
- `<Leader>` key is bound to `,`
- `<Leader>sv` will vertically split
- `<Leader>sx` will horizontally split
- `<Leader>hjkl` for moving between splits
- `<Leader>+` and `<Leader>-` for vertical resizing
- `ga` for easy align. For instance, `gaip:` will align the paragraph on `:`
- `<Leader><Enter>` to get rid of search highlighting
- `<Leader>gd` will go to definition using YouCompleteMe or Coc.nvim depending on the filetype
- `\` will trigger a grep from the cwd
- `<Leader>nn` will toggle NerdTree
- `<Leader>nf` will open NerdTree at the current files location
- `<Leader>u` will toggle Undotree
- `<C-T>` will open your file search
- `<C-P>` same as above but with a preview of the files
- `<Leader>b` opens a FZF file search for the open buffers
- `<Leader>s` opens a search of the current files lines and will take you to the line found
- `cp$` copy rest of line (or any pattern) to clipboard

## Installation
### Prerequisites
If you want to use the setup script, then you should be on Ubuntu. Otherwise just reference it for installing your setup.

```sh
$ curl https://raw.githubusercontent.com/haydenrou/dotfiles/master/setup.sh >> ~/setup.sh
$ chmod +x ~/setup.sh
$ sh ~/setup.sh
```
