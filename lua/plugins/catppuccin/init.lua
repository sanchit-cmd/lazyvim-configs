return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    transparent_background = true,
    priority = 1000,
    opts = {
      integrations = {
        treesitter = true,
      },
      highlight_overrides = {
        all = function(colors)
          return {
            Constant = { fg = colors.red, bold = true },
          }
        end,
      },
    },
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
