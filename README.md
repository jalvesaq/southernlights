# southernlights

Vim and Neovim color scheme

## Features

   - Black background.
   - Many different colors.
   - High contrast.
   - Specific rules for TreeSitter, LSP, html, mail, diff, wdiff, and nvim-cmp.
   - Vim version written in VimScript and Neovim version written in Lua.
   - History: the starting point was "torte".
   - Personal information: I have never had an opportunity to see the real
     southern lights.

## Usage

### Neovim

In your `init.lua`:

```lua
require("southernlights").load()
```

### Vim

In your `vimrc`:

```vim
colorscheme southernlights


```
## Screenshot

![Screenshot](https://raw.githubusercontent.com/jalvesaq/southernlights/master/screenshot.png "Screenshot")

To replicate the image above, open the file `scripts/openFiles.vim` and, in Normal mode, type `:so`.

To see what attributes your terminal emulator supports, run the Python script `test_terminal.py`:

```sh
cd scripts
python3 test_terminal.py
```

