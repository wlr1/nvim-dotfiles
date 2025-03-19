-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--Increment/decrement  normal mod press + or -
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "C-x")

-- Delete a word backwards (v then b then d)
keymap.set("n", "dw", "vb_d")

--Select all (gg first file line, shift-v line-visual, shitf-g all file highlight)
keymap.set("n", "<C-a>", "gg<S-v>G")

--Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

--New tab (te - enter new tab, Tab prev and nex tab)
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--Split window (ss split bottom, sv split horizont, sx close window, se correct all wind size )
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set("n", "sx", ":close<CR>")
keymap.set("n", "se", "<C-w>=")

--Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

--Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "C-w>+")
keymap.set("n", "<C-w><down>", "C-w>-")

--Diagnostic
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
