-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.lean" },
  -- { import = "astrocommunity.pack.haskell" },
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^4",
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
    dependencies = {
      {
        "AstroNvim/astrolsp",
        ---@type AstroLSPOpts
        opts = {
          ---@diagnostic disable: missing-fields
          handlers = { hls = false },
        },
      },
    },
    init = function()
      local astrolsp_avail, astrolsp = pcall(require, "astrolsp")
      vim.g.haskell_tools = require("astrocore").extend_tbl({
        hls = astrolsp_avail and { capabilities = astrolsp.config.capabilities, on_attach = astrolsp.on_attach } or {},
      }, vim.g.haskell_tools)
    end,
  },
  { import = "astrocommunity.pack.rust" },
  -- import/override with your plugins folder
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
}
