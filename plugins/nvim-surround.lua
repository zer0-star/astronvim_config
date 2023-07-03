return {
  "kylechui/nvim-surround",
  keys = {
    { "ys", mode = "n" },
    { "cs", mode = "n" },
    { "ds", mode = "n" },
    { "S", mode = "v" },
  },
  config = function()
    require("nvim-surround").setup()
  end,
}
