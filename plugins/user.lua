return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "folke/tokyonight.nvim",
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.mapping["<C-y>"] = cmp.mapping { i = cmp.mapping.abort(), c = cmp.mapping.close() }

      table.insert(opts.sources, { name = "nvim_lsp_signature_help" })

      return opts
    end,
  }
}
