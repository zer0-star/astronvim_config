local prefix = ""

---@type LazySpec
return {
  "smoka7/hop.nvim",
  opts = {
    keys = "etovxqpdygfblzhckisuran",
  },
  keys = {
    -- { prefix, mode = { "n" }, desc = "hop.nvim prefix" },
    "f",
    "F",
    "t",
    "T",
    "w",
    "b",
  },
  event = "VeryLazy",
  init = function()
    -- place this in one of your configuration file(s)
    local hop = require "hop"
    local directions = require("hop.hint").HintDirection
    vim.keymap.set(
      "",
      prefix .. "f",
      function() hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true } end,
      { remap = true }
    )
    vim.keymap.set(
      "",
      prefix .. "F",
      function() hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true } end,
      { remap = true }
    )
    vim.keymap.set(
      "",
      prefix .. "t",
      function() hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 } end,
      { remap = true }
    )
    vim.keymap.set(
      "",
      prefix .. "T",
      function() hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 } end,
      { remap = true }
    )
    vim.keymap.set(
      "",
      prefix .. "w",
      function() hop.hint_words { direction = directions.AFTER_CURSOR } end,
      { remap = true }
    )
    vim.keymap.set(
      "",
      prefix .. "b",
      function() hop.hint_words { direction = directions.BEFORE_CURSOR } end,
      { remap = true }
    )
  end,
  cond = true,
}
