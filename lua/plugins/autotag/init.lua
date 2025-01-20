return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup({
      -- enable rename
      enable_rename = true,
    })
  end,
}
