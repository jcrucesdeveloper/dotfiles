return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,
    config = function()
      require("neo-tree").setup({
        filesystem = {
          follow_current_file = { enabled = true },
        },
      })
      vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })
    end
  }
}
