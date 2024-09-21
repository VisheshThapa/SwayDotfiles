local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff" },
    javascript = { "deno_fmt" },
    typescript = { "deno_fmt" },
    c = { "clang-format" },
    css = { "prettier" },
    html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
require("conform").formatters.lua_ls = {
  prepend_args = { "-i", "2" },
  -- The base args are { "-filename", "$FILENAME" } so the final args will be
  -- { "-i", "2", "-filename", "$FILENAME" }
}

return options
