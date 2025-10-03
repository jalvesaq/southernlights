-----------------------------------------------------------------
-- To open all files, type (in Normal mode):
--
--   :so
--
-----------------------------------------------------------------

vim.o.switchbuf = "useopen"
vim.o.wrap = false

-- 1
local b1 = vim.api.nvim_get_current_buf()
vim.api.nvim_win_set_cursor(0, { 1, 0 })

-- 2
vim.cmd.vsplit("R")
vim.api.nvim_buf_set_lines(0, 0, -1, true, {
    "library(foreign)",
    'detach("package:datasets")',
    "x <- rnorm(1)",
    "if (x > 0) {",
    '  cat("Yes\\n")',
    "} else {",
    '  cat("No\\n")',
    "}",
    "x <- numeric(123)",
    "x <- NULL",
})
vim.api.nvim_set_option_value("modified", false, { buf = 0 })
vim.api.nvim_set_option_value("filetype", "r", { buf = 0 })
vim.api.nvim_win_set_cursor(0, { 1, 0 })
local b2 = vim.api.nvim_get_current_buf()
vim.cmd("redraw")

-- 3
vim.cmd.vsplit("PYTHON")
vim.api.nvim_buf_set_lines(0, 0, -1, true, {
    "#!/usr/bin/python",
    "",
    "def Hello(where):",
    '    if where == "World":',
    '        print("The world is too big.")',
    "    else:",
    '        print("Hello " + where + "!")',
    "",
    'Hello("people")',
})
vim.api.nvim_set_option_value("modified", false, { buf = 0 })
vim.api.nvim_set_option_value("filetype", "python", { buf = 0 })
vim.api.nvim_win_set_cursor(0, { 1, 0 })
vim.cmd("redraw")

-- 4
vim.cmd.split("C")
vim.api.nvim_buf_set_lines(0, 0, -1, true, {
    "#include <stdio.h>",
    "#include <stdlib.h>",
    "",
    "/* Licence: Public Domain. */",
    "/* TODO: improve the code. */",
    "",
    "int main(int argc, char **argv) {",
    "    const char *err = (char *)calloc(1024, sizeof(char));",
    '    printf("Msg: %s!\\n", err);',
    "    free(error);",
    "    return 0;",
    "}",
})
vim.api.nvim_set_option_value("modified", false, { buf = 0 })
vim.api.nvim_set_option_value("filetype", "c", { buf = 0 })
vim.api.nvim_win_set_cursor(0, { 1, 0 })
vim.cmd("redraw")

-- 5
vim.cmd.split("E-MAIL")
vim.api.nvim_buf_set_lines(0, 0, -1, true, {
    "Date: Thu, 7 Nov 2013 20:15:23 -0300",
    "From: Nobody <nobody@nowhere.com>",
    "To: Someone <someone@somewhere.org>",
    "Subject: Nothing important",
    "User-Agent: Mutt/1.5.21 (2010-09-15)",
    "",
    "This is a paragraph highlighted as normal",
    "text with some selected text.",
    "",
    "> Citation level 1.",
    ">> Citation level 2.",
    ">>> Citation level 3.",
    ">>>> Citation level 4.",
    ">>>>> Citation level 5.",
    "",
    "-- ",
    "Nobody from Nowhere",
    "www.nowhere.com",
})
vim.api.nvim_set_option_value("modified", false, { buf = 0 })
vim.api.nvim_set_option_value("filetype", "mail", { buf = 0 })
vim.api.nvim_win_set_cursor(0, { 1, 0 })
local b5 = vim.api.nvim_get_current_buf()
vim.cmd("redraw")

-- 6
vim.cmd("sb " .. tostring(b2))
vim.cmd.split("PHP")
vim.api.nvim_buf_set_lines(0, 0, -1, true, {
    '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"',
    ' "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">',
    '<html lang="pt-br">',
    "   <head>",
    "      <title>EXAMPLE</title>",
    "   </head>",
    "<body>",
    "<h1>About you...</h1>",
    "<?php ",
    "   if(strstr(strtolower($_SERVER['HTTP_USER_AGENT']), \"windows\")){",
    '      print("Why are you using Windows?");',
    "   } else {",
    '      print("Are you using Linux?");',
    "   }",
    "?>",
    "<p>For more info, click",
    '<a href="http://localhost">here</a>.</p>',
    "",
    "</body>",
    "</html>",
})
vim.api.nvim_set_option_value("modified", false, { buf = 0 })
vim.api.nvim_set_option_value("filetype", "php", { buf = 0 })
vim.api.nvim_win_set_cursor(0, { 1, 0 })
vim.cmd("redraw")

-- 7
vim.cmd("redraw")
vim.cmd.split("DIFF")
vim.api.nvim_buf_set_lines(0, 0, -1, true, {
    "diff -r c45a38bd18a9 src/spell.c",
    "--- a/src/spell.c	Sun Jun 26 19:40:23 2011 +0200",
    "+++ b/src/spell.c	Sat Jul 02 08:11:37 2011 -0300",
    "@@ -575,8 +575,8 @@",
    " ",
    " /* Result values.  Lower number is accepted over higher one. */",
    " #define SP_BANNED	-1",
    "-#define SP_OK		0",
    "-#define SP_RARE		1",
    "+#define SP_RARE		0",
    "+#define SP_OK		1",
    " #define SP_LOCAL	2",
    " #define SP_BAD		3",
    " ",
})
vim.api.nvim_set_option_value("modified", false, { buf = 0 })
vim.api.nvim_set_option_value("filetype", "diff", { buf = 0 })
vim.api.nvim_win_set_cursor(0, { 1, 0 })
vim.cmd("redraw")

-- 8
vim.cmd("sb " .. tostring(b1))
vim.cmd.split("JAVASCRIPT")
vim.api.nvim_buf_set_lines(0, 0, -1, true, {
    "// !preview r2d3 data=c(0.3, 0.6, 0.8, 0.95, 0.40, 0.20)",
    "//",
    "// r2d3: https://rstudio.github.io/r2d3",
    "//",
    "",
    "var barHeight = Math.ceil(height / data.length);",
    "",
    "svg.selectAll('rect')",
    "  .data(data)",
    "  .enter().append('rect')",
    "    .attr('width', function(d) { return d * width; })",
    "    .attr('height', barHeight)",
    "    .attr('y', function(d, i) { return i * barHeight; })",
    "    .attr('fill', 'steelblue');",
})
vim.api.nvim_set_option_value("modified", false, { buf = 0 })
vim.api.nvim_set_option_value("filetype", "javascript", { buf = 0 })
vim.api.nvim_win_set_cursor(0, { 1, 0 })
vim.cmd("redraw")

-- 9
vim.cmd("sb " .. tostring(b1))
vim.cmd.split("RUST")
vim.api.nvim_buf_set_lines(0, 0, -1, true, {
    "//! System's uptime",
    "//!",
    "//! This block displays system uptime in terms of two biggest units,",
    "//! so minutes and seconds, or hours and minutes or days and hours",
    "//! or weeks and days.",
    "",
    "use super::prelude::*;",
    "use tokio::fs::read_to_string;",
    "",
    "#[derive(Deserialize, Debug, SmartDefault)]",
    "#[serde(deny_unknown_fields, default)]",
    "pub struct Config {",
    "    pub format: FormatConfig,",
    "    #[default(60.into())]",
    "    pub interval: Seconds,",
    "}",
    "",
    "pub async fn run(config: &Config, api: &CommonApi) -> Result<()> {",
    '    let format = config.format.with_default(" $icon $uptime ")?;',
    "",
    "    loop {",
    '        let uptime = read_to_string("/proc/uptime")',
    "            .await",
    '            .error("Failed to read /proc/uptime")?;',
    "        let mut seconds: u64 = uptime",
    "            .split('.')",
    "            .next()",
    "            .and_then(|u| u.parse().ok())",
    '            .error("/proc/uptime has invalid content")?;',
    "",
    "        let uptime = Duration::from_secs(seconds);",
    "",
    "        let weeks = seconds / 604_800;",
    "        seconds %= 604_800;",
    "        let days = seconds / 86_400;",
    "        seconds %= 86_400;",
    "        let hours = seconds / 3_600;",
    "        seconds %= 3_600;",
    "        let minutes = seconds / 60;",
    "        seconds %= 60;",
    "",
    "    }",
    "}",
})
vim.api.nvim_set_option_value("modified", false, { buf = 0 })
vim.api.nvim_set_option_value("filetype", "rust", { buf = 0 })
vim.api.nvim_win_set_cursor(0, { 1, 0 })
vim.cmd("redraw")

vim.cmd("sb " .. tostring(b5))
vim.api.nvim_win_set_cursor(0, { 8, 15 })
vim.cmd.normal("v2e")
