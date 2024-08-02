-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.lean" },
  -- { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.rust" },
  -- import/override with your plugins folder
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
}
