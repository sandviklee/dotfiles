### sandviklee's dotfiles

#### My Setup

- OS: MacOS ARM V DHH's Opinionated Arch (Omarchy) x86_64
- Term: Ghostty V Wezterm
- Shell: Zsh
- WM: Hyprland V Aerospace V Rectangle
- Text Editor: Neovim

#### My Dotfiles

- Ghostty
- Neovim
- Tmux
- OpenCode (Mainly just for adding new models...)

#### General stuff

##### TPM

Installing TPM

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Reloading Tmux

```bash
tmux source ~/.config/tmux/.tmux.conf
```

##### NVIM

Update TreeSitter (syntax tree generator)

```nvim
:TS Update
```

Update LazyVim

```nvim
:Lazy
```

#### The Magic

To sync these (using symlinks) with your local configs, use:

```bash
stow -t ~ .
```
