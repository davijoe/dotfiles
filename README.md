# Dotfiles

Uses stow.

Helpful commands:

```bash
stow */ # Stow all
stow nvim # Stow nvim...
```

Remove symlinks again:
```
stow -D
```
```
```


Dir structure should follow dir structure from `home`
`~/.config/nvim` becomes `dotfiles/nvim/.config/nvim`
