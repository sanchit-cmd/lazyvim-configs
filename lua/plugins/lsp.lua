-- ~/.config/nvim/lua/plugins/pyright.lua

local uv = vim.loop

-- Function to walk up the directory tree to find venv or env
local function find_venv_path(start_path)
  local dir = uv.fs_realpath(start_path)
  while dir do
    for _, name in ipairs({ "venv", "env" }) do
      local candidate = dir .. "/" .. name
      if vim.fn.isdirectory(candidate) == 1 then
        return candidate .. "/bin/python"
      end
    end
    local parent = uv.fs_realpath(dir .. "/..")
    if parent == dir then
      break
    end -- reached root
    dir = parent
  end
end

return {
  -- Override only pyright config
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        pyright = function(_, opts)
          local buf_path = vim.api.nvim_buf_get_name(0)
          local file_dir = vim.fn.fnamemodify(buf_path, ":p:h")
          local python_path = find_venv_path(file_dir)

          if python_path then
            opts.python = { pythonPath = python_path }
          end

          return opts
        end,
      },
    },
  },
}
