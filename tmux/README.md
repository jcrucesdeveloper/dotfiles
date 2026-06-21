# tmux

Nord-themed tmux config with vi keybindings.

## Prefix

`C-s`

## Key bindings

| Key | Action |
|-----|--------|
| `prefix \|` | Split horizontal |
| `prefix -` | Split vertical |
| `prefix c` | New window (cwd) |
| `prefix h/j/k/l` | Navigate panes |
| `prefix H/J/K/L` | Resize panes |
| `prefix n/p` | Next/prev window |
| `prefix v` | Copy mode |
| `prefix x` | Kill pane |
| `prefix X` | Kill window |
| `prefix r` | Reload config |

## Install

```sh
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
```

Requires [TPM](https://github.com/tmux-plugins/tpm). After linking, open tmux and press `prefix + I` to install plugins.
