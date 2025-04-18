### Prerequisites
* Have installed [Neovim](https://github.com/neovim/neovim) >= v0.8
## Install script
```zsh
cd ~/.config && git clone git@github.com:william-price01/nvim.git
```
## Project structure
```
./init.lua
```
This is where we import our [Lazy](https://github.com/folke/lazy.nvim) configuration and our binds. Lua makes this super simple.

```
./lazy-lock.json
```
This is the json file where [Lazy](https://github.com/folke/lazy.nvim) declares the plugins you have installed, as well as the branch, and commit hash.

```
lua/
```
This folder is where the magic happens. We install our package manager ([Lazy](https://github.com/folke/lazy.nvim)), it is also where we declare what plugins to install. We also define custom keybindings here.

```
lua/config/lazy.lua
```
This is where we install lazy vim, and configure it.
```
lua/plugins
```
This is the folder where we add all of our plugins. Each plugin lives in it's own file.
Example:
```
return {
"catppuccin/nvim",
name="catppuccin",
priority=1000
}
```
Lua makes this super simple, just return a table with the repo and some options.

```
lua/binds.lua
```
In this file we define keybinds and general options.

Example: 
```
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving up half-page' })
```
Thanks to the neovim lua runtime, vim is a global we can access. 

##
Thanks for reading.
