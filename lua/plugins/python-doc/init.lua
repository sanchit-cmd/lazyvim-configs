return {
  "fredrikaverpil/pydoc.nvim",
  dependencies = {
    { "nvim-telescope/telescope.nvim" }, -- optional
    { "folke/snacks.nvim" }, -- optional
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = { "markdown" },
      },
    },
  },
  cmd = { "PyDoc" },
  opts = {
    picker = {
      type = "snacks",
    },
    window = {
      type = "vsplit",
    },
  },
}
