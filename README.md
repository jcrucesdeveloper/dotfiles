# dotfiles

Neovim + tmux config. Gruvbox hard theme, space as leader.

## Structure

```
.          → Neovim config (init.lua + lua/)
tmux/      → tmux config (see tmux/README.md)
```

## Neovim install

```sh
ln -s $(pwd) ~/.config/nvim
```

Lazy.nvim bootstraps itself on first launch.

## Plugins

| Plugin | Purpose |
|--------|---------|
| lazy.nvim | Package manager |
| gruvbox.nvim | Colorscheme (hard contrast) |
| lualine.nvim | Statusline (winbar, Nord theme) |
| neo-tree.nvim | File explorer |
| telescope.nvim | Fuzzy finder |
| nvim-treesitter | Syntax highlighting |
| mason + nvim-lspconfig | LSP (Lua, TS, Python, HTML, CSS, Rust) |
| nvim-autopairs | Auto-close brackets |
| emmet-ls | Emmet completions |
| vim-tmux-navigator | Seamless pane navigation |

## Key bindings

Leader is `<Space>`.

| Key | Action |
|-----|--------|
| `jj` | Escape (insert mode) |
| `<leader>w` | Save |
| `<leader>q` | Quit |
| `<leader>y` | Copy to system clipboard |
| `<Tab>` / `<S-Tab>` | Next / prev buffer |
| `<leader>bd` | Delete buffer |
| `<leader>e` | Toggle file explorer |
| `<leader>ff` | Find files (Telescope) |
| `<leader>fg` | Live grep (Telescope) |
| `<leader>fb` | Browse buffers (Telescope) |
| `<leader>sv` | Vertical split |
| `<leader>sh` | Horizontal split |
| `<leader>sc` | Close split |
| `K` | LSP hover |
| `gd` | LSP go to definition |
| `<Space>ca` | LSP code action |
| `<` / `>` (visual) | Indent / dedent (stay in visual) |
| `J` / `K` (visual) | Move lines down / up |
