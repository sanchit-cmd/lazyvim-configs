return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  {
    "mlaursen/vim-react-snippets",
    config = function()
      -- Load the React snippets
      require("vim-react-snippets").lazy_load()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({
        -- enable rename
        enable_rename = true,
      })
    end,
  },
}
