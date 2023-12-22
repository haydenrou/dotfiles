<div align="center">
        <h1>dotfiles</h1>
        <strong>i3, Vim, ZSH, Ruby, Typescript & React, Elixir, Golang & more!</strong>
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
- [tmate](https://tmate.io/)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [todoist helper](https://github.com/haydenrou/todoist_helper)

### ZSH Usage
- general git aliases, i.e. `ga`, `gco`, `gd`, `gc` etc
- `gcob<Enter>` checkout branch from fzf
- `gpullb<Enter>` pull branch from fzf
- `gpushb<Enter>` push to origin upstream branch from fzf
- `gmergeb<Enter>` merge branch from fzf
- rails aliases such as `rdm`, `rdmd`, `rc`
- `evrc` edit vimrc
- Providing you have [feh](https://github.com/derf/feh) installed, `chbg` will cycle backgrounds through images in your `~/.bgs` folder
- `CTRL-T` will search for files from the command line with fzf
- `ALT-C` will search for directories from the command line and selecting one will place you in the directory [Note: on MacOS `ESC-C` will do this]
- From within tmux you can open vi mode with `<prefix>[`

### Included Vim Plugins
##### [vim-plug for plugin management](https://github.com/junegunn/vim-plug)
- [nerdtree](https://github.com/preservim/nerdtree)
- [coc.nvim ](https://github.com/neoclide/coc.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-markdown](https://github.com/plasticboy/vim-markdown)
- [markdown preview](https://github.com/iamcco/markdown-preview.nvim)
- [emmet-vim](https://github.com/mattn/emmet-vim)
- [vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [vim-system-copy](https://github.com/christoomey/vim-system-copy)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [elixir vim](https://github.com/elixir-editors/vim-elixir)
- [tickit.vim](https://github.com/haydenrou/tickit.vim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-dispatch](https://github.com/tpope/vim-dispatch)
- [vim-surround](https://github.com/tpope/vim-surround)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes)
- [vim-airline](https://github.com/vim-airline/vim-airline)

### Vim Usage
- `<Leader>` key is bound to ` `
- `<Leader>vs` will vertically split
- `<Leader>zs` will horizontally split
- `<Leader>hjkl` for moving between splits
- `<Leader>+` and `<Leader>-` for vertical resizing
- `ga` for easy align. For instance, `gaip:` will align the paragraph on `:`
- `<Leader><Enter>` to get rid of search highlighting
- `<Leader>gd` will go to definition using Coc.nvim
- `<Leader>gr` will go to references using Coc.nvim
- `\` will trigger a fzf grep from the cwd
- `<Leader>nn` will toggle NerdTree
- `<Leader>nf` will open NerdTree at the current files location
- `<Leader>u` will toggle Undotree
- `<C-T>` will open your file search
- `<Leader>b` opens a FZF file search for the open buffers
- `<Leader>s` opens a search of the current files lines and will take you to the line found
- `cp$` copy rest of line (or any pattern) to clipboard
- `<Leader>gst` fugitive git status
- `<Leader>gj` fugitive get head when in merge
- `<Leader>gf` fugitive get upstream when in merge
- `<Leader>sp` to spell previously incorrect word
- `<Leader>p` delete and paste register from within visual mode. the active register will not be replaced
- `K` Go to the documentation of the function under the cursor. If Coc isn't enabled for the filetype, it will search nvims :h
- ... Explore the vimrc to find more!

[A handy list of vim-bits](./VIMBITS.md)

## Installation
### Prerequisites
Currently the setup.sh script in this repository is somewhat unfinished and won't work entirely correctly.
It is there primarily for documentation, so if you are going to use this configuration, use it as guidance to install what you need to.

#### Deprecated
```sh
$ curl -fLo ~/setup.sh https://raw.githubusercontent.com/haydenrou/dotfiles/master/setup.sh
$ chmod +x ~/setup.sh
$ sh ~/setup.sh
```

## Contribution
You're more than welcome to submit an issue or PR with any bugs or feature suggestions.

If you want to pair up on a project, or build out any of the above, pop me an email at <hayden@rouille.dev>.
