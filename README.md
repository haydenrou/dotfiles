<div align="center">
    <h1>haydenrou/dotfiles</h1>
    <strong>My Personalized Development Environment</strong>
</div>
<br>

![Dotfiles Demo](https://i.imgur.com/lCmkMfR.png)

To prevent myself from going down wild Linux rabbit holes and trying every distribution I can get my hands on, I've transitioned to the world of Apple. Therefore, this configuration may require changes to work in a Linux environment.

## Installed Software for IDE Purposes:

- [neovim](https://github.com/neovim/neovim)
- [tmux](https://github.com/tmux/tmux)
- [yabai](https://github.com/koekeishiya/yabai) & [skhd](https://github.com/koekeishiya/skhd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)
- [zsh](https://www.zsh.org/)

## File Structure:

Most files in this repo are structured so that you can symlink the directory directly into `~/.config`, except for a few such as `zshrc` etc.

## Neovim Plugins:

Using [lazy.nvim](https://github.com/folke/lazy.nvim) as a plugin manager, here are the plugins used:

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for fuzzy finding
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for code parsing etc
- [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim) as a colour scheme
- [mason.nvim](https://github.com/williamboman/mason.nvim) is used in conjunction with lsp-zero to manage your different LSPs
- [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim) to use NeoVim's LSP client
- [harpoon](https://github.com/ThePrimeagen/harpoon) is used for silky smooth file movement
- [undotree](https://github.com/mbbill/undotree) for all your accidental undo's
- [vim-fugitive](https://github.com/tpope/vim-fugitive) for git within vim
- [vim-rhubarb](https://github.com/tpope/vim-rhubarb) primarily just for `:GBrowse` - going to the file you're in, in your browser
- [copilot.vim](https://github.com/github/copilot.vim) to let robots do our work for us
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) for a better than nerdtree experience
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) a good looking statusline
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) to comment out your broken code
- [nvim-surround](https://github.com/kylechui/nvim-surround) to surround whatever you want, with whatever you want

## Notable Settings:

- Line numbers and relative numbers are turned on.
- Line wrapping is turned off.
- The grep program for searching is set to ripgrep.
- Trailing whitespace is automatically stripped on buffer write.

## Binds:

### General:

- `<leader>` is set to `<Space>`
- `<leader>sp` will spell the previous word correctly.
- `n` and `N` after a search will reposition the cursor to the center of the screen for better visibility.
- `J` combines the next line with the current line, ensuring the cursor remains at the beginning of the combined line.
- `<C-d>` and `<C-u>` scroll half a screen down or up while keeping the cursor position fixed.
- `<leader><Enter>` clears the search highlight.
- `J` (Visual Mode) and `K` (Visual Mode) move the selected lines down (`J`) or up (`K`) in visual mode.
- `<leader>y` and `<leader>Y` yank the current line (`<leader>y`) or from the cursor to the end of the line (`<leader>Y`) to the system clipboard.
- `<leader>p` and `<leader>d` paste (`<leader>p`) or delete (`<leader>d`) without copying to the buffer.
- `<leader>f` formats the current buffer using the LSP (Language Server Protocol).
- `<C-k>`, `<C-j>`, `<leader>k`, and `<leader>j` navigate through quickfix and location lists, ensuring the cursor position is centered.
- `<leader>s` performs a case-insensitive search and replace across the entire buffer, prompting for confirmation.
- `<Leader>r` toggles relative line numbers.

[A random list of handy vim commands](./docs/vimbits.md)

### Plugin-Specific Keybinds:

- **Copilot:**
  - In insert mode, `<C-L>` will complete the suggestion.

- **Fugitive:**
  - `<leader>gs` will open git in nvim.

- **Harpoon:**
  - `<leader>a` will add to the list.
  - `<leader>e` will open the list. This is changeable using general vim motions, such as deleting or moving a line below.

- **Rhubarb:**
  - `<leader>gb` will open the browser to the current file.

- **Surround:**
  - `ys{motion}{wrapper}` will surround with the `{wrapper}` variable. This also works in `visual` mode.

- **Telescope:**
  - Use `\` for a fuzzy project word search.
  - `<C-T>` to search files.
  - `<C-P>` to search files that aren't in git.
  - `<leader>b` to browse your buffer files.
  - Pressing tab to select from the list, then following with `<C-q>` will open a quickfix list

- **Tree:**
  - `<leader>nn` to open the file tree.
  - `<leader>nf` to find the current file in the tree. Use `a` to add files, `d` to delete, and `r` to rename from the tree.

- **Undotree:**
  - `<leader>u` to open undotree.

## LSPs (Language Server Protocols):

By default, the following LSPs will be installed:
- `tsserver` for typescript.
- `eslint` for eslint.
- `solargraph` for ruby.
- `lua_ls` for lua.
- `tailwindcss` for tailwind.
- `rust_analyzer` for rust.
- `gopls` for golang.
- `jsonls` for json.
- `emmet_ls` for emmet html.

### Bindings:

- Pressing `Tab` (or `Shift-Tab`) completes your LSP suggestions.
- Pressing `<Enter>` populates the currently selected tab.

Additionally, use `<C-Space>` to open the completion menu if it's not automatically open.

## Zsh Aliases:

- `vi` and `vim` are aliased to `nvim`.
- `ga` and `gaa` alias git add for staging changes for either a specified file or all unstaged files.
- `gap` prompts for interactive staging with `git add -p`.
- `gb` shows the Git branch, and `gc` initiates a Git commit.
- `gca` combines `git add .` and `git commit`.
- `gco` is a shortcut for `git checkout`.
- `gcob` allows you to interactively switch Git branches.
- `gpushb`, `gbd`, `gpullb`, and `gmergeb` streamline branch operations.
- `gp` simplifies the Git push command.
- `gf` and `gfa` alias Git fetch commands.
- `gst` provides a concise Git status with untracked files.
- `rc` opens the Rails console.
- `rdm` and `rdmd` execute Rails database migration commands.
- `cdd` changes the directory to the dotfiles project.
- `it` is bound to `git` because ¯\_(ツ)_/¯
- `egst` shows modified files with `git status` and opens them in Neovim.
- `CTRL-T` will search for files from the command line with fzf
- `ESC-C` (`ALT-C` on Linux) will search for directories from the command line, and selecting one will place you in the directory
- tmux prefix is set to `<C-b>`
- Open vi mode with `<prefix>[` within tmux

## Suggested Software:
- [alacritty terminal](https://alacritty.org/)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [nerd fonts](https://www.nerdfonts.com/font-downloads) for devicons to display in nvim-tree
    - for instance, `brew tap homebrew/cask-fonts && brew install --cask font-commit-mono-nerd-font`, and added to your terminal (see `alacrity/config.yml`)

## Debugging:

- Check `:checkhealth` to ensure all plugins are working correctly.
- Use `:map` or `:verbose map <leader>nn` (for instance) to check keybinds are being set correctly.

## TODO:
- Add setup for tsx/jsx commenting
  - [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) may do the trick
- Update lsp.lua keymaps and section LSP/Bindings section in README.md
- Set default spaces/tabs for correct file types per the _backup/vimrc.symlink
  - as well as some missing bindings

## Contribution:
You're more than welcome to submit an issue or PR with any bugs or feature suggestions.

If you want to pair up on a project or build out any of the above, pop me an email at <hayden@rouille.dev>.
