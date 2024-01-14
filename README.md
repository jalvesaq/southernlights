# southernlights

Vim color scheme

## Features

   - Black background.
   - Based on other color schemes. The starting point was "torte".
   - Mostly, uses the same 256 colors in both GVim and terminal emulators.
   - Specific rules for TreeSitter, LSP, html, mail, diff, wdiff, vim help and showmarks plugin.

# Usage

This color scheme should not be enabled if the terminal emulator does not
support 256 colors, such as the Linux console. Hence, if you only use
graphical terminal emulators with support for 256 colors, you may put in your
`vimrc`:

```vim
colorscheme southernlights
```

or in your `init.lua`:

```lua
vim.cmd.colorscheme('southernlights')
```

But if sometimes you use a less colorful terminal, you should run
southernlights conditionally. Example for `vimrc`:

```vim
if $TERM != 'linux'
    colorscheme southernlights
endif
```

and a different and more complete example for `init.lua`:

```lua
if os.getenv('COLORTERM') == "truecolor" then
    vim.o.mouse = 'a'
    vim.cmd('colorscheme southernlights')
else
    -- Avoid the letter q being printed in the Linux Console
    vim.o.guicursor = ''
end
```

## Screenshot

![Screenshot](https://raw.githubusercontent.com/jalvesaq/southernlights/master/screenshot.png "Screenshot")


## Tests

   - To see at once how some file types are highlighted, open the file
     `test_colorscheme/openFiles.vim` and, in Normal mode, type `:so %`.

   - To see what attributes your terminal support, do `./test_terminal.py`.

