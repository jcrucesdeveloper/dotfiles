local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Escape
map("i", "jj", "<Esc>", opts)

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<cr>", opts)

-- Save / Quit (C-s is tmux prefix, so use leader)
map("n", "<leader>w", "<cmd>w<cr>", opts)
map("n", "<leader>q", "<cmd>q<cr>", opts)

-- Clipboard (unnamedplus handles yank automatically; this covers explicit copy)
map({ "n", "v" }, "<leader>y", '"+y', opts)

-- Better indenting in visual (stay in visual mode)
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move lines up/down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Buffer navigation
map("n", "<Tab>", "<cmd>bnext<cr>", opts)
map("n", "<S-Tab>", "<cmd>bprev<cr>", opts)
map("n", "<leader>bd", "<cmd>bdelete<cr>", opts)

-- Neo-tree
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)

-- Splits
map("n", "<leader>sv", "<cmd>vsplit<cr>", opts)
map("n", "<leader>sh", "<cmd>split<cr>", opts)
map("n", "<leader>sc", "<cmd>close<cr>", opts)
