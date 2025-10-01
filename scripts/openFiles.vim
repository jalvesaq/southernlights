"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To open all files, type (in Normal mode):
"   
"   :so
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set switchbuf=useopen
set nowrap

e statistics.R
let b1 = nvim_get_current_buf()
normal gg

vsplit
e example.py
let b2 = nvim_get_current_buf()
normal gg

vsplit
e example.c
let b3 = nvim_get_current_buf()
normal gg

split
e email.eml
let b4 = nvim_get_current_buf()
normal gg

split
e webpage.php
let b5 = nvim_get_current_buf()
normal gg

exe 'sb ' . b2
redraw
split
redraw
e patch.diff
let b6 = nvim_get_current_buf()
normal gg

split
e d3.js
let b7 = nvim_get_current_buf()
normal gg

exe 'sb ' . b1
redraw
split
redraw
e uptime.rs
let b8 = nvim_get_current_buf()
normal gg

split
redraw
e init.lua
let b9 = nvim_get_current_buf()
normal gg

redraw
exe 'sb ' . b8
vertical resize +13

redraw
exe 'sb ' . b4
call nvim_win_set_cursor(0, [8, 15])
normal v2e
