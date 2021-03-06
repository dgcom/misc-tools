# Profiles for personall use

Configure `nnn`, `neovim`, `tmux`, etc.

In `.basrc` add `source ~/.nnn` at the end.

More info on vim -> neovim: [Migrating from vim to neovim – O. Valadares' Blog](https://otavio.dev/2018/09/30/migrating-from-vim-to-neovim/)

Details on `tmux` key bindings: [Vi mode in tmux | Arabesque](https://blog.sanctum.geek.nz/vi-mode-in-tmux/)

Setting `vi` mode is useful, but can keep selection keys as space/enter.

Added better config for screen - shows status bar

[Alternatives](alternatives.md)

## Installing tools

- [Releases · jarun/nnn](https://github.com/jarun/nnn/releases/latest)
- [Releases · rclone/rclone](https://github.com/rclone/rclone/releases/latest)

```shell
git clone https://github.com/dgcom/misc-tools.git
sudo apt install neovim tmux screen
```

Automatically downloading latest version of nnn form Gitub (requires jq, but same can be parsed out as text):

```shell
curl -O `curl -s https://api.github.com/repos/jarun/nnn/releases/latest | jq -r '.assets[].browser_download_url|select(contains("nnn-musl"))'`
```

## Note on screen in WSL

Running screen for the first time in WSL may result in error:

```text
Cannot make directory '/run/screen': Permission denied
```

To fix, execute:

```shell
sudo /etc/init.d/screen-cleanup start
```
