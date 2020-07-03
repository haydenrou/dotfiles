<div align="center">
        <h1>dotfiles</h1>
        <strong>i3, Vim, Bash, Ruby, Javascript & React, Elixir, Golang & more!</strong>
</div>
<br>

![Dotfiles Demo](https://i.imgur.com/muOQBBa.png)

You may want to use this setup if you are interested in or use any of the below features.

### Installed software
- [neovim](https://neovim.io/)
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
- [i3wm](https://github.com/i3/i3)
- [tldr](https://tldr.sh)
- [bat](https://github.com/sharkdp/bat)

### Useful aliases
- general git aliases, i.e. `ga`, `gco`, `gd`, `gc` etc
- `gcob<Enter>` checkout branch from fzf
- `gpb<Enter>` pull branch from fzf
- `tidybranches` [!dangerous] delete all branches except develop and master
- rails aliases such as `rdm`, `rdmd`, `rc`
- `evrc` edit vimrc
- Providing you have [feh](https://github.com/derf/feh) installed, `chbg` will cycle backgrounds through images in your `~/.bgs` folder

### Included plugins
- [vim-plug](https://github.com/junegunn/vim-plug)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [nerdtree](https://github.com/preservim/nerdtree)
- [gruvbox theme](https://github.com/morhetz/gruvbox)
- [coc.nvim ](https://github.com/neoclide/coc.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-markdown](https://github.com/plasticboy/vim-markdown)
- [emmet-vim](https://github.com/mattn/emmet-vim)
- [vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [vim-system-copy](https://github.com/christoomey/vim-system-copy)
- [vim-surround](https://github.com/tpope/vim-surround)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [elixir vim](https://github.com/elixir-editors/vim-elixir)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes)
- [markdown preview](https://github.com/iamcco/markdown-preview.nvim)
- [tickit.vim](https://github.com/haydenrou/tickit.vim)

### General usage
Most of the key binds are self explanatory within the vimrc but here are some useful ones
- `<Leader>` key is bound to `,`
- `<Leader>vs` will vertically split
- `<Leader>zs` will horizontally split
- `<Leader>hjkl` for moving between splits
- `<Leader>+` and `<Leader>-` for vertical resizing
- `ga` for easy align. For instance, `gaip:` will align the paragraph on `:`
- `<Leader><Enter>` to get rid of search highlighting
- `<Leader>gd` will go to definition using Coc.nvim
- `<Leader>gr` will go to references using Coc.nvim
- `\` will trigger a grep from the cwd
- `<Leader>nn` will toggle NerdTree
- `<Leader>nf` will open NerdTree at the current files location
- `<Leader>u` will toggle Undotree
- `<C-T>` will open your file search
- `<C-P>` same as above but with a preview of the files
- `<Leader>b` opens a FZF file search for the open buffers
- `<Leader>s` opens a search of the current files lines and will take you to the line found
- `cp$` copy rest of line (or any pattern) to clipboard
- `<Leader>gst` fugitive git statsu
- `<Leader>gj` fugitive get head when in merge
- `<Leader>gf` fugitive get upstream when in merge
- `<Leader>gdd` fugitive git diff

## Installation
### Prerequisites
If you want to use the setup script, then you should be on Ubuntu. Otherwise just reference it for installing your setup.

```sh
$ curl -fLo ~/setup.sh https://raw.githubusercontent.com/haydenrou/dotfiles/master/setup.sh
$ chmod +x ~/setup.sh
$ sh ~/setup.sh
```

## Contribution
You're more than welcome to submit an issue or PR with any bugs or feature suggestions.

If you want to pair up on a project, or build out any of the above, pop me an email at <hayden@rouille.dev>.
