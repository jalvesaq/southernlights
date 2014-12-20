southernlights
==============

Vim color scheme

Features:
---------

   - Black background.
   - Based on other color schemes. The starting point was "torte".
   - Uses the same 256 colors in both GVim and terminal emulators capable of
     displaying 256 colors.
   - Default to an 8 colors scheme if can not detect terminal capability of
     displaying 256 colors.
   - Specific rules for html, mail, diff, wdiff, vim help and showmarks
     plugin.

Screenshot:
-----------

![Screenshot](http://www.lepem.ufc.br/jaa/Southernlights.png "Screenshot")

Tests:
------

   - To see at once how some file types are highlighted, open the file
     `test_colorscheme/openFiles.vim` and, in Normal mode, type `:so %`.

   - To see what attributes your terminal support, do `./test_terminal.py`.

