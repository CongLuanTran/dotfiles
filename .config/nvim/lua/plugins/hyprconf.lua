return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "hyprlang",
      "rasi",
      "jsonc",
      "bash",
      "css",
      "scss",
    })
    vim.filetype.add({
      extension = { rasi = "rasi" },
      pattern = {
        [".*/waybar/config"] = "jsonc",
        [".*/waybar/*.css"] = "scss",
        [".*/kitty/*.conf"] = "bash",
        [".*/hypr/.*%.conf"] = "hyprlang",
      },
    })

    require("nvim-treesitter.configs").setup(opts)
  end,
}
