# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## MacOS
### required
```
rm -rf ~/.config/nvim
```
### optional but recommended
```
rm -rf ~/.local/share/nvim
```
```
rm -rf ~/.local/state/nvim
```
```
rm -rf ~/.cache/nvim
```
### clone starter repo
```
git clone https://github.com/suvrajitray/lazy-nvim-config ~/.config/nvim
```
### start nvim
```
nvim
```


## windows OS

### required
```
Remove-Item $env:LOCALAPPDATA\nvim -Recurse -Force
```
### optional but recommended
```
Remove-Item $env:LOCALAPPDATA\nvim-data -Recurse -Force
```

### clone starter repo
```
git clone https://github.com/suvrajitray/lazy-nvim-config $env:LOCALAPPDATA\nvim
```
### start nvim
```
nvim
```

