return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end
  },
  {
    "pangloss/vim-javascript"
  },
  {
    "maxmellon/vim-jsx-pretty"
  },
  {
    "peitalin/vim-jsx-typescript"
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {},
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {},
  },
  {
    "cappyzawa/trim.nvim",
    opts = {},
  },
  {
    "nvim-tree/nvim-web-devicons"
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
    opts = {},
  }
}
