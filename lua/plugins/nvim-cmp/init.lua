return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      print("Customizing nvim-cmp sources")
      opts.snippet = {
        expand = function() end, -- Disable snippet expansion
      }
      opts.sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }
      return opts
    end,
  },
}
