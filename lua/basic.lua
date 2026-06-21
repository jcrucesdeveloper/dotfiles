-- Basic settings
vim.opt.clipboard = "unnamedplus"                  -- Sync with system clipboard
vim.opt.cmdheight = 0                              -- No gap between lualine and tmux bar
vim.opt.autowrite = true                           -- Autosave when switching buffers/windows
vim.opt.number = true                              -- Line numbers
vim.opt.relativenumber = true                      -- Relative line numbers
vim.opt.cursorline = true                          -- Highlight current line
vim.opt.wrap = false                               -- Don't wrap lines
vim.opt.scrolloff = 10                             -- Keep 10 lines above/below cursor 
vim.opt.sidescrolloff = 8                          -- Keep 8 columns left/right of cursor

-- Indentation
vim.opt.tabstop = 2                                -- Tab width
vim.opt.shiftwidth = 2                             -- Indent width
vim.opt.softtabstop = 2                            -- Soft tab stop
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.hlsearch = true                            -- Highlight search results (clear with <Esc>)
vim.opt.incsearch = true                           -- Show matches as you type

-- Line adjustment
vim.opt.wrap = true          -- Enable line wrapping
vim.opt.linebreak = true     -- Break lines at convenient points (like spaces)
vim.opt.showbreak = "↪ "     -- Symbol at the beginning of wrapped lines

-- Close nvim if Neo-tree is the last window
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == "neo-tree" then
      vim.cmd("quit")
    end
  end,
})

-- Auto-reload files changed outside of nvim
vim.opt.autoread = true
local timer = vim.uv.new_timer()
timer:start(1000, 1000, vim.schedule_wrap(function()
  vim.cmd("silent! checktime")
end))


