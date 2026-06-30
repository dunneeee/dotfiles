return 
{
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        json       = { "prettierd" },
        jsonc      = { "prettierd" },
        yaml       = { "prettierd" },
        markdown   = { "prettierd" },
        sh         = { "shfmt" },
        bash       = { "shfmt" },
        toml       = { "taplo" },
        ["*"]      = { "trim_whitespace" },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    }
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "prettierd",
        "shfmt"
      },
      auto_update = false,
      run_on_start = true,
    }
  }
}
