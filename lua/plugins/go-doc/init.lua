return {
  "fredrikaverpil/godoc.nvim",
  version = "*",
  dependencies = {
    { "nvim-telescope/telescope.nvim" }, -- optional
    { "folke/snacks.nvim" }, -- optional

    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = { "go", "markdown" },
      },
    },
  },
  build = "go install github.com/lotusirous/gostdsym/stdsym@latest", -- optional
  cmd = { "GoDoc" }, -- optional
  opts = {
    picker = {
      type = "snacks",
    }, -- Set the picker to use snacker
    window = {
      type = "vsplit",
    },
  },
}
