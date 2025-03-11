return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    transparent_background = true,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          telescope = true,
          -- snack = true, -- Enable Snack Picker
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
