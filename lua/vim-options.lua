-- Set Tab settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({
			higroup = "HighlightUndo",
			timeout = 300,
		})
	end,
})

-- enable relative line numbers with absolute line number on current line
vim.opt.number = true
vim.opt.relativenumber = true

-- set the leader key
vim.g.mapleader = " "

-- change the eob tilde with dots
vim.opt.fillchars:append({ eob = "." })

-- set current working directory as vim root
vim.g.root_spec = { "cwd" }

-- keybinding to open terminal
vim.keymap.set("n", "T", ":botright split | :resize 20 | :terminal<CR>", {})

-- disable highlighting
vim.keymap.set("n", "<leader>h", ":noh<CR>", {})

-- navigation speed keymaps
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- highlight cursor line
vim.opt.cursorline = true
