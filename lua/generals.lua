-- Encoding
vim.o.fileencoding = "utf-8"

-- Treat dash separated words as a word text object"
vim.cmd('set iskeyword+=-')

-- Required to keep multiple buffers open
vim.o.hidden = true

-- No long line wrap
vim.wo.wrap = false
vim.cmd('syntax on') -- Syntax highlighting

-- Enable mouse
vim.o.mouse = "a"


-- Tabs are 4 spaces
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true -- Converts tabs to spaces
-- vim.bo.smartindent = true -- Makes indenting smart

-- Line numbers
vim.wo.number = true

-- Don't change number column size because of diagnositc
vim.wo.signcolumn = "yes"

