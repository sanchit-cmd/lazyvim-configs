return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "go", "lua", "javascript", "python", "java", "typescript" }, -- Added Java & TypeScript
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      custom_captures = {
        ["escape_sequence"] = "Constant",
      },
    },
  },
}
