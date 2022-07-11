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
- [tmate](https://tmate.io/)

### Useful aliases
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

### Included plugins
##### [vim-plug for plugin management](https://github.com/junegunn/vim-plug)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [nerdtree](https://github.com/preservim/nerdtree)
- [coc.nvim ](https://github.com/neoclide/coc.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-markdown](https://github.com/plasticboy/vim-markdown)
- [emmet-vim](https://github.com/mattn/emmet-vim)
- [vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [vim-system-copy](https://github.com/christoomey/vim-system-copy)
- [vim-surround](https://github.com/tpope/vim-surround)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [elixir vim](https://github.com/elixir-editors/vim-elixir)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes)
- [markdown preview](https://github.com/iamcco/markdown-preview.nvim)
- [tickit.vim](https://github.com/haydenrou/tickit.vim)
- [vim-dispatch](https://github.com/tpope/vim-dispatch)

### General usage
Most of the key binds are self explanatory within the vimrc but here are some useful ones
- `<Leader>` key is bound to ` `
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
- `<Leader>gst` fugitive git status
- `<Leader>gj` fugitive get head when in merge
- `<Leader>gf` fugitive get upstream when in merge
- `<Leader>gdd` fugitive git diff
- `<Leader>sp` to spell previously incorrect word
- `<Leader>p` delete and paste register from within visual mode. the active register will not be replaced

### Handy vim-bits :)
- `ctrl-a` or `ctrl-x` to increment/decrement numbers
- `ctrl-g` to see what file and line you're at
- `g8` to see the ASCII of the character on your cursor
- `g<` to see previous output
- `g&` to replay last substitute command
- `gu` or `gU` + motion will upcase/downcase
- `g?` to turn selection into rot13 or `g??` for the line
- `gd` go to definition
- `gf` go to file
- `gq` put a long line on multiple lines. Mainly for comments
- `gv` to highlight previous highlighted region
- `gi` to last insert location
- `:<,'>g/Word/norm! diw` to execute command on highlighted section for only lines with Word on
- `~` to capitalize / uncapitalize a letter
- `q` followed by a letter to record a macro
- `m` followed by a letter to mark a spot in a file. If the letter is a capital then it's bound globally
- `` `a `` move to the mark
- `ctrl-v` and `ctrl-x` to open split panes from fzf file search
- `ctrl-w =` to equal size the panes
- `ctrl-w r` to swap pane positions
- `:cdo g/word/norm! D` to action on a quickfix list

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
