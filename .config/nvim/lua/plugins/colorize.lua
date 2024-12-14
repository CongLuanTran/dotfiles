return {
  "norcalli/nvim-colorizer.lua",
  opts = {
    DEFAULT_OPTIONS = {
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    },
  },
  config = function()
    require("colorizer").setup()
  end,
}
