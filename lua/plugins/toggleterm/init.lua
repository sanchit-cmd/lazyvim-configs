return {
  "akinsho/toggleterm.nvim",
  opts = {
    open_mapping = [[<leader>tt]], -- Open terminal with this key
    direction = "float",
  },
  keys = {
    { "<leader>ft", "<cmd>ToggleTerm direction=float<CR>", desc = "Floating Terminal" },
    { "<leader>tt", "<cmd>TermSelect<CR>", desc = "Telescope Terminal Selector" },
  },
  dependencies = { "nvim-telescope/telescope.nvim" },
}
