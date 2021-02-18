A full build of neovim with custom colorschemes and several plugins
===

To install this build of neovim, clone this repository on your local machine and in the repository root run ./deploy

```
git clone https://github.com/inceye/nvim-build
cd nvim-build
./deploy
```

Plugins will be installed automatically on the first use of neovim.

---

This is our build of [neovim](https://github.com/neovim/neovim) -- a modern replacement for [vim](https://www.vim.org/) -- the improved terminal text editor.

To install it just use our deploy script, or install it manually. In Arch linux it is done by using pacman

`
pacman -S neovim
`

---

This configuration of neovim uses several plugins, which will be installed automatically on the first start of neovim. Also this build requires a set of fonts to be installed, which is done while running the deploy script.

The list of plugins used in this configuration:

* Vim airline plugin for custom bottom bar with more info
* Vim startify project manager for git info
* TODO
    ...
