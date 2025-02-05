local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    zig = {"zig fmt"},
    json = { "prettier" },
  },
  formatters = {
    prettier = {
      timeout = 10000,  -- Increase timeout to 5 seconds
      env = {
        PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.prettierrc"),
      },
    },
  },
  autoformat = true,
  format_on_save = {
    timeout_ms = 3000,     -- Increase global timeout
    lsp_fallback = true,
    async = true,          -- Enable async formatting
  },
  format_after_save = {    -- Fallback to format after save if timeout occurs
    timeout_ms = 5000,
    lsp_fallback = true,
  },
}

return options