# Dotfiles
## by Alex Stone

Inspired by Craig Little

### Installation
    git clone https://github.com/alex-stone/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    script/bootstrap

`script/bootstrap` installs Homebrew dependencies, symlinks the `*.symlink`
files into `$HOME`, switches your shell to zsh, and creates the machine-local
`secret/` files (see below) if they don't already exist.

### Secrets & machine-local config

The `secret/` directory holds everything that is machine-specific, sensitive,
or organization-specific — credentials, identity, and any config that
shouldn't live in a public repo. It is **gitignored** (`/secret` in
`.gitignore`) and never committed, so each machine keeps its own copy.
`script/bootstrap` creates skeleton versions of these files on a fresh machine;
fill them in with real values.

The tracked `*.symlink` files stay generic and each conditionally loads its
counterpart from `secret/`:

- **`secret/env`** — environment variables & secrets. Sourced *early* by
  `zsh/zshrc.symlink`. Pure `export` statements only (API keys, tokens,
  org-specific vars like `GOPROXY`/`GH_HOST`, etc.).

- **`secret/zshrc`** — interactive shell aliases & functions. Sourced near the
  *end* of `zsh/zshrc.symlink`, after PATH/tool setup, so everything registers
  in the right order.

- **`secret/.gitconfig`** — git identity, signing, and org URL rewrites.
  Included from `git/gitconfig.symlink` (`user.*`, `commit.gpgsign`,
  `url.insteadOf`).

- **`secret/vimrc`** — machine-local vim settings. Sourced from
  `vim/vimrc.symlink` if present.

Anything sensitive, machine-specific, or organization-specific belongs in
`secret/`, not in the tracked `*.symlink` files.
