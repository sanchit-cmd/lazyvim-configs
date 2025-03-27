-- bootstrap lazy.nvim, LazyVim and your plugins
--
-- auto-detect local .venv and configure pyright/jedi

require("config.lazy")

-- Disable autoformat for python files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.py",
  callback = function(args)
    local bufnr = args.buf
    local buftype = vim.api.nvim_buf_get_option(bufnr, "buftype")
    if buftype == "" then
      local filepath = vim.api.nvim_buf_get_name(bufnr)
      vim.fn.jobstart({ "black", filepath }, {
        on_exit = function(_, code, _)
          if code == 0 then
            vim.schedule(function()
              if vim.api.nvim_buf_is_valid(bufnr) and vim.api.nvim_get_current_buf() == bufnr then
                vim.cmd("checktime")
              end
            end)
          end
        end,
      })
    end
  end,
})
