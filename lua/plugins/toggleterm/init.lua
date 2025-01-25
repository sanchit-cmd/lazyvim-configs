return {
  -- other plugins...
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        -- Your custom configurations here
      })

      -- Keybindings
      vim.api.nvim_set_keymap("n", "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tv",
        ":ToggleTerm direction=vertical<CR>",
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>th",
        ":ToggleTerm direction=horizontal<CR>",
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tb",
        ":ToggleTerm size=10 direction=horizontal<CR>",
        { noremap = true, silent = true }
      )
    end,
  },
}
